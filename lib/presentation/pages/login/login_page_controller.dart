import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:offside/domain/entities/user.dart';
import 'package:offside/domain/usecases/auth/auth_use_case_providers.dart';
import 'package:offside/domain/usecases/settings/reactive_settings_providers.dart';
import 'package:offside/domain/usecases/users/user_use_case_providers.dart';
import 'package:offside/presentation/pages/login/login_page_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'login_page_controller.g.dart';

@riverpod
class LoginPageController extends _$LoginPageController {
  @override
  LoginPageState build() {
    ref.read(getLoggedInUserUseCaseProvider).run().then((user) {
      if (user == null) {
        state = const LoginPageState(loggedIn: false, gettingUserInfo: false);
        return;
      }

      _updateUserIdSetting(user.id);

      state = state.copyWith(user: user, gettingUserInfo: false, loggedIn: true);
    });

    return const LoginPageState();
  }

  Future<void> login(String email, String password) async {
    state = state.copyWith(loggingIn: true);
    try {
      final userId = await ref.read(logInUseCaseProvider).run(email, password);
      _updateUserIdSetting(userId);
    } catch (e) {
      state = state.copyWith(loggingIn: false);
      rethrow;
    }
  }

  Future<void> register(String email, String password) async {
    final emailWhitelisted = await ref.read(emailIsWhiteListedUseCaseProvider).run(email);
    log('Email whitelisted: $emailWhitelisted');

    // final credentials =
    //     await auth.FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
    //
    // final newUser = User(
    //   firebaseId: credentials.user!.uid,
    //   name: 'Test',
    //   surname: 'Test',
    // );
    //
    // await _addUser(newUser);
  }

  Future<void> _addUser(User newUser) async {
    final newUserId = await ref.read(addUserUseCaseProvider).run(newUser);
    _updateUserIdSetting(newUserId);
  }

  Future<void> logout() async {
    await auth.FirebaseAuth.instance.signOut();
  }

  void _updateUserIdSetting(String id) {
    ref.read(currentUserIdSettingProvider.notifier).value = id;
  }
}

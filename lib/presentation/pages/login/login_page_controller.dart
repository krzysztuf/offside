import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:offside/domain/entities/user.dart';
import 'package:offside/domain/usecases/users/user_use_case_providers.dart';
import 'package:offside/presentation/pages/login/login_page_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'login_page_controller.g.dart';

@riverpod
class LoginPageController extends _$LoginPageController {
  @override
  LoginPageState build() {
    log('getting logged in user');
    ref.read(getLoggedInUserUseCaseProvider).run().then((user) {
      log('controller: got user $user');

      if (user == null) {
        state = const LoginPageState(loggedIn: false, gettingUserInfo: false);
        return;
      }

      state = state.copyWith(user: user, gettingUserInfo: false, loggedIn: true);
    });

    return const LoginPageState();
  }

  Future<void> login(String email, String password) async {
    final credentials = await auth.FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
  }

  Future<void> register(String email, String password) async {
    final credentials =
        await auth.FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);

    final newUser = User(
      firebaseId: credentials.user!.uid,
      name: 'Test',
      surname: 'Test',
    );

    await ref.read(addUserUseCaseProvider).run(newUser);
  }

  Future<void> logout() async {
    await auth.FirebaseAuth.instance.signOut();
  }
}

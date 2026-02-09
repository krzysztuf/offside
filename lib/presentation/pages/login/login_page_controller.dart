import 'package:offside/data/repositories/providers.dart';
import 'package:offside/domain/entities/user.dart';
import 'package:offside/domain/usecases/auth_providers.dart';
import 'package:offside/domain/usecases/settings_providers.dart';
import 'package:offside/presentation/pages/login/login_page_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'login_page_controller.g.dart';

@riverpod
class LoginPageController extends _$LoginPageController {
  @override
  LoginPageState build() {
    ref.read(authRepositoryProvider).currentUser().then((user) {
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
      final userId = await ref.read(logInProvider(email, password).future);
      _updateUserIdSetting(userId);
    } catch (e) {
      state = state.copyWith(loggingIn: false);
      rethrow;
    }
  }

  Future<void> register(String email, String password, String name, String surname) async {
    final emailWhitelisted = await ref.read(authRepositoryProvider).isEmailWhitelisted(email);
    if (!emailWhitelisted) {
      throw Exception('Użytownik z tym adresem email nie ma dostępu do aplikacji');
    }

    // Stub implementation - Firebase removed
    final newUser = User(name: name, surname: surname);
    await _addUser(newUser);
  }

  Future<void> _addUser(User newUser) async {
    final newUserId = await ref.read(usersRepositoryProvider).add(newUser);
    _updateUserIdSetting(newUserId);
  }

  Future<void> logout() async {
    await ref.read(authRepositoryProvider).logOut();
  }

  void _updateUserIdSetting(int id) {
    ref.read(currentUserIdSettingProvider.notifier).value = id;
  }
}

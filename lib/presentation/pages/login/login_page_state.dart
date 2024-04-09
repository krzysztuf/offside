import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:offside/domain/entities/user.dart';

part 'login_page_state.freezed.dart';

@freezed
class LoginPageState with _$LoginPageState {
  const factory LoginPageState({
    @Default(false) bool loggedIn,
    @Default(false) bool loggingIn,
    @Default(true) bool gettingUserInfo,
    User? user,
  }) = _LoginPageState;

  const LoginPageState._();
}

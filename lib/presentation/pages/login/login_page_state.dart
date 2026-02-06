import 'package:dart_mappable/dart_mappable.dart';
import 'package:offside/domain/entities/user.dart';

part 'login_page_state.mapper.dart';

@MappableClass()
class LoginPageState with LoginPageStateMappable {
  final bool loggedIn;
  final bool loggingIn;
  final bool gettingUserInfo;
  final User? user;

  const LoginPageState({
    this.loggedIn = false,
    this.loggingIn = false,
    this.gettingUserInfo = true,
    this.user,
  });
}

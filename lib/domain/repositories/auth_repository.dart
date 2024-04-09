import 'package:offside/domain/entities/user.dart';

abstract interface class AuthRepository {
  Future<User> logIn(String email, String password);

  Future<User> register(String email, String password);

  Future<void> logOut();

  Future<User?> currentUser();
}

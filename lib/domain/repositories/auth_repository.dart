import 'package:offside/domain/entities/user.dart';

abstract interface class AuthRepository {
  Future<User> login(String email, String password);

  Future<User> register(String email, String password);

  Future<void> logout();

  Future<User?> currentUser();
}

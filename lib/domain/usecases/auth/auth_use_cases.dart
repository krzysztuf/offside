import 'package:firebase_auth/firebase_auth.dart';
import 'package:offside/domain/repositories/auth_repository.dart';
import 'package:offside/domain/usecases/async_use_case.dart';
import 'package:offside/domain/usecases/auth/exceptions.dart';

class LogInUseCase implements AsyncUseCaseWithParams<String, String, String> {
  final AuthRepository authRepository;

  LogInUseCase(this.authRepository);

  @override
  Future<String> run(String username, String password) async {
    try {
      final user = await authRepository.logIn(username, password);
      return user.id;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        throw UserNotFoundException();
      } else if (e.code == 'wrong-password') {
        throw WrongPasswordException();
      }
      
      throw Exception(e.message);
    }
  }
}

class LogOutUseCase implements AsyncUseCase<void> {
  final AuthRepository authRepository;

  LogOutUseCase(this.authRepository);

  @override
  Future<void> run() async {
    await authRepository.logOut();
  }
}

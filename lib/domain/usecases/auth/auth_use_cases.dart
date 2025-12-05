import 'package:offside/domain/repositories/auth_repository.dart';
import 'package:offside/domain/usecases/async_use_case.dart';

class LogInUseCase implements AsyncUseCaseWithParams<String, String, String> {
  final AuthRepository authRepository;

  LogInUseCase(this.authRepository);

  @override
  Future<String> run(String username, String password) async {
    try {
      final user = await authRepository.logIn(username, password);
      return user.id;
    } catch (e) {
      throw Exception(e.toString());
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

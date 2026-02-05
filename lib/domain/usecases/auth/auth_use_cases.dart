import 'package:offside/domain/repositories/auth_repository.dart';
import 'package:offside/domain/usecases/async_use_case.dart';

class LogInUseCase implements AsyncUseCaseWithParams<int, String, String> {
  final AuthRepository authRepository;

  LogInUseCase(this.authRepository);

  @override
  Future<int> run(String username, String password) async {
    try {
      final user = await authRepository.logIn(username, password);
      return user.id;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}

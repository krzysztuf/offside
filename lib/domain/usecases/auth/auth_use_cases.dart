import 'package:offside/domain/usecases/async_use_case.dart';

class LogInUseCase implements AsyncUseCaseWithParams<String, String, String> {
  @override
  Future<String> run(String username, String password) {
    throw UnimplementedError();
  }
}

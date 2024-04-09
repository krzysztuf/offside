import 'package:offside/data/repositories/providers.dart';
import 'package:offside/domain/usecases/auth/auth_use_cases.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_use_case_providers.g.dart';

@riverpod
LogInUseCase logInUseCase(LogInUseCaseRef ref) {
  return LogInUseCase(ref.read(authRepositoryProvider));
}

@riverpod
LogOutUseCase logOutUseCase(LogOutUseCaseRef ref) {
  return LogOutUseCase(ref.read(authRepositoryProvider));
}

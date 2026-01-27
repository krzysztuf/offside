import 'package:offside/data/repositories/providers.dart';
import 'package:offside/domain/usecases/auth/auth_use_cases.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_use_case_providers.g.dart';

@riverpod
LogInUseCase logInUseCase(Ref ref) {
  return LogInUseCase(ref.read(authRepositoryProvider));
}

@riverpod
LogOutUseCase logOutUseCase(Ref ref) {
  return LogOutUseCase(ref.read(authRepositoryProvider));
}

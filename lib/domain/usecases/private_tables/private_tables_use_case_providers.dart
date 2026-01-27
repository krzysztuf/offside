import 'package:offside/data/repositories/providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'private_tables_use_cases.dart';

part 'private_tables_use_case_providers.g.dart';

@riverpod
GetAllPrivateTablesUseCase getAllPrivateTablesUseCase(Ref ref) {
  return GetAllPrivateTablesUseCase(ref.read(privateTablesRepositoryProvider));
}

@riverpod
UpdatePrivateTableUseCase updatePrivateTableUseCase(Ref ref) {
  return UpdatePrivateTableUseCase(ref.read(privateTablesRepositoryProvider));
}

@riverpod
AddPrivateTableUseCase addPrivateTableUseCase(Ref ref) {
  return AddPrivateTableUseCase(ref.read(privateTablesRepositoryProvider));
}

@riverpod
RemovePrivateTableUseCase removePrivateTableUseCase(Ref ref) {
  return RemovePrivateTableUseCase(ref.read(privateTablesRepositoryProvider));
}

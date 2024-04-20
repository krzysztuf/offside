import 'package:offside/data/repositories/providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'private_tables_use_cases.dart';

part 'private_tables_use_case_providers.g.dart';

@riverpod
GetAllPrivateTablesUseCase getAllPrivateTablesUseCase(GetAllPrivateTablesUseCaseRef ref) {
  return GetAllPrivateTablesUseCase(ref.read(privateTablesRepositoryProvider));
}

@riverpod
UpdatePrivateTableUseCase updatePrivateTableUseCase(UpdatePrivateTableUseCaseRef ref) {
  return UpdatePrivateTableUseCase(ref.read(privateTablesRepositoryProvider));
}

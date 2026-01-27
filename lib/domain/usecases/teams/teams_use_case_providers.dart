import 'package:offside/data/repositories/providers.dart';
import 'package:offside/domain/usecases/teams/teams_use_cases.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'teams_use_case_providers.g.dart';

@riverpod
GetAllTeamsUseCase getAllTeamsUseCase(Ref ref) {
  return GetAllTeamsUseCase(ref.watch(teamsRepositoryProvider));
}

@riverpod
GetWinnerTeamIdUseCase getWinnerTeamIdUseCase(Ref ref) {
  return GetWinnerTeamIdUseCase();
}

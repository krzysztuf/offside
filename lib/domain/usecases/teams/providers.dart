import 'package:offside/data/repositories/providers.dart';
import 'package:offside/domain/usecases/teams/get_all_teams_use_case.dart';
import 'package:offside/domain/usecases/teams/get_all_teams_use_case_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

@riverpod
GetAllTeamsUseCase getAllTeamsUseCase(GetAllTeamsUseCaseRef ref) {
  return GetAllTeamsUseCaseImpl(ref.watch(teamsRepositoryProvider));
}

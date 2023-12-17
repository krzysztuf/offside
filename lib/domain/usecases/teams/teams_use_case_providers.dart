library teams_use_cases;

import 'package:offside/data/repositories/providers.dart';
import 'package:offside/domain/entities/team.dart';
import 'package:offside/domain/repositories/repository.dart';
import 'package:offside/domain/usecases/async_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_all_teams.dart';
part 'teams_use_case_providers.g.dart';

@riverpod
GetAllTeams allTeamsUseCase(AllTeamsUseCaseRef ref) {
  return GetAllTeams(ref.watch(teamsRepositoryProvider));
}

import 'package:offside/domain/entities/team.dart';
import 'package:offside/domain/usecases/teams/teams_use_case_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'all_teams_provider.g.dart';

@riverpod
class AllTeams extends _$AllTeams {
  @override
  Future<List<Team>> build() async {
    return ref.read(allTeamsUseCaseProvider).run();
  }
}

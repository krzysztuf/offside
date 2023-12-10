import 'package:offside/domain/models/team.dart';
import 'package:offside/domain/usecases/teams/team_use_cases.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'all_teams_provider.g.dart';

@riverpod
class AllTeams extends _$AllTeams {
  @override
  Future<List<Team>> build() async {
    return ref.read(allTeamsUseCaseProvider).run();
  }
}

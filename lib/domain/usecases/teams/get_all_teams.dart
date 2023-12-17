part of 'teams_use_case_providers.dart';

class GetAllTeams implements AsyncUseCase<List<Team>> {
  final Repository<Team> teams;

  GetAllTeams(this.teams);

  @override
  Future<List<Team>> run() {
    return teams.all();
  }
}

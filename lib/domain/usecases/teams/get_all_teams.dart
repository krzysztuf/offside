part of 'team_use_cases.dart';

class GetAllTeams {
  final Repository<Team> teams;

  GetAllTeams(this.teams);

  Future<List<Team>> run() {
    return teams.all();
  }
}

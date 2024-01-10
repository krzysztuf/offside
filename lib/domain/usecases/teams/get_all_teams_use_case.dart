part of 'teams_use_cases.dart';

class GetAllTeamsUseCase implements AsyncUseCase<List<Team>> {
  final Repository<Team> teams;

  GetAllTeamsUseCase(this.teams);

  @override
  Future<List<Team>> run() {
    return teams.all();
  }
}

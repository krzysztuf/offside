import 'package:offside/data/sources/remote/firestore_source.dart';
import 'package:offside/domain/entities/team.dart';
import 'package:offside/domain/repositories/repository.dart';
import 'package:offside/domain/usecases/async_use_case.dart';

class GetAllTeamsUseCase implements AsyncUseCase<List<Team>> {
  final Repository<Team> teams;

  GetAllTeamsUseCase(this.teams);

  @override
  Future<List<Team>> run() {
    return teams.all();
  }
}

class GetWinnerTeamIdUseCase implements AsyncUseCase<String> {
  GetWinnerTeamIdUseCase();

  @override
  Future<String> run() async {
    final winnerIdSnapshot = await FirestoreSource.settings.doc('winnerId').get();
    return winnerIdSnapshot.data()!.value;
  }
}

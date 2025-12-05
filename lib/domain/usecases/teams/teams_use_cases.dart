import 'package:offside/core/utils/timed_cache.dart';
import 'package:offside/domain/entities/team.dart';
import 'package:offside/domain/repositories/repository.dart';
import 'package:offside/domain/usecases/async_use_case.dart';
import 'package:supercharged/supercharged.dart';

class GetAllTeamsUseCase implements AsyncUseCase<List<Team>> {
  static final cache = TimedCache<List<Team>>(300.days);
  final Repository<Team> teams;

  GetAllTeamsUseCase(this.teams);

  @override
  Future<List<Team>> run() {
    return cache.valueOr(updateWith: () => teams.all());
  }
}

class GetWinnerTeamIdUseCase implements AsyncUseCase<String> {
  GetWinnerTeamIdUseCase();

  @override
  Future<String> run() async {
    // Stub implementation - Firebase removed
    return '';
  }
}

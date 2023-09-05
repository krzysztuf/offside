import 'package:offside/domain/models/team.dart';
import 'package:offside/domain/repositories/teams_repository.dart';

class TeamsInMemory extends TeamsRepository {
  @override
  Future<void> add(Team item) {
    // TODO: implement add
    throw UnimplementedError();
  }

  @override
  Future<List<Team>> all() {
    // TODO: implement all
    throw UnimplementedError();
  }

  @override
  Future<Team> byId({required int id}) {
    // TODO: implement byId
    throw UnimplementedError();
  }

  @override
  Future<void> clear() {
    // TODO: implement clear
    throw UnimplementedError();
  }

  @override
  Future<void> remove(Team item) {
    // TODO: implement remove
    throw UnimplementedError();
  }
}

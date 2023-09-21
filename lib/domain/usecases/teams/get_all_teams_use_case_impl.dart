import 'package:offside/domain/models/team.dart';
import 'package:offside/domain/repositories/teams_repository.dart';
import 'package:offside/domain/usecases/repository_async_use_case.dart';

import 'get_all_teams_use_case.dart';

class GetAllTeamsUseCaseImpl extends GetAllTeamsUseCase {
  GetAllTeamsUseCaseImpl(super.repository);

  @override
  Future<List<Team>> run() async {
    return await repository.all();
  }
}

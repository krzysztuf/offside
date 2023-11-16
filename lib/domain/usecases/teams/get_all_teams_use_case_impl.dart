import 'package:offside/domain/models/team.dart';

import 'get_all_teams_use_case.dart';

class GetAllTeamsUseCaseImpl extends GetAllTeamsUseCase {
  GetAllTeamsUseCaseImpl(super.repository);

  @override
  Future<List<Team>> run() async {
    return await repository.all();
  }
}

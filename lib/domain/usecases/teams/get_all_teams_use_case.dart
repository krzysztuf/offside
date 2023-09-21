import 'package:offside/domain/models/team.dart';
import 'package:offside/domain/repositories/teams_repository.dart';
import 'package:offside/domain/usecases/repository_async_use_case.dart';

abstract class GetAllTeamsUseCase extends RepositoryAsyncUseCase<TeamsRepository, List<Team>> {
  GetAllTeamsUseCase(super.repository);
}

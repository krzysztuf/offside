import 'package:offside/domain/models/team.dart';
import 'package:offside/domain/repositories/repository.dart';
import 'package:offside/domain/usecases/repository_async_use_case.dart';

abstract class GetAllTeamsUseCase extends RepositoryAsyncUseCase<Repository<Team>, List<Team>> {
  GetAllTeamsUseCase(super.repository);
}

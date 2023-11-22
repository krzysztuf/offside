import 'package:offside/domain/models/user.dart';
import 'package:offside/domain/repositories/repository.dart';
import 'package:offside/domain/usecases/repository_async_use_case.dart';

abstract class GetCurrentUserUseCase extends RepositoryAsyncUseCase<Repository<User>, User?> {
  GetCurrentUserUseCase(super.repository);
}

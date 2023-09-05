import 'async_use_case.dart';

abstract class RepositoryAsyncUseCase<Repository, T> extends AsyncUseCase<T> {
  final Repository repository;

  RepositoryAsyncUseCase(this.repository);
}

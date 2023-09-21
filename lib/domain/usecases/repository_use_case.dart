import 'use_case.dart';

abstract class RepositoryUseCase<Repository, T> extends UseCase<T> {
  final Repository repository;

  RepositoryUseCase(this.repository);
}

import 'package:inspection_sidecar/domain/usecases/use_case.dart';

abstract class RepositoryUseCase<Repository, T> extends UseCase<T> {
  final Repository repository;

  RepositoryUseCase(this.repository);
}

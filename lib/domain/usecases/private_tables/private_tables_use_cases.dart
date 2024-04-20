import 'package:offside/domain/entities/private_table.dart';
import 'package:offside/domain/repositories/repository.dart';
import 'package:offside/domain/usecases/async_use_case.dart';

class GetAllPrivateTablesUseCase implements AsyncUseCase<List<PrivateTable>> {
  final Repository<PrivateTable> repository;

  GetAllPrivateTablesUseCase(this.repository);

  @override
  Future<List<PrivateTable>> run() {
    return repository.all();
  }
}

class UpdatePrivateTableUseCase implements AsyncUseCaseWithParam<void, PrivateTable> {
  final Repository<PrivateTable> repository;

  UpdatePrivateTableUseCase(this.repository);

  @override
  Future<void> run(PrivateTable table) {
    return repository.update(table);
  }
}

class AddPrivateTableUseCase implements AsyncUseCaseWithParam<void, PrivateTable> {
  final Repository<PrivateTable> repository;

  AddPrivateTableUseCase(this.repository);

  @override
  Future<void> run(PrivateTable table) {
    return repository.add(table);
  }
}

class RemovePrivateTableUseCase implements AsyncUseCaseWithParam<void, PrivateTable> {
  final Repository<PrivateTable> repository;

  RemovePrivateTableUseCase(this.repository);

  @override
  Future<void> run(PrivateTable table) {
    return repository.remove(table);
  }
}

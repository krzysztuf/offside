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

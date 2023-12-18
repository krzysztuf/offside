import 'package:offside/domain/entities/user.dart';
import 'package:offside/domain/repositories/repository.dart';
import 'package:offside/domain/usecases/async_use_case.dart';

class GetAllUsers implements AsyncUseCase<List<User>> {
  final Repository<User> users;

  GetAllUsers(this.users);

  @override
  Future<List<User>> run() {
    return users.all();
  }
}

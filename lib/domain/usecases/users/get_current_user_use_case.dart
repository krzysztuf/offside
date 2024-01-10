import 'package:offside/domain/entities/user.dart';
import 'package:offside/domain/repositories/repository.dart';
import 'package:offside/domain/usecases/async_use_case.dart';

class GetCurrentUserUseCase implements AsyncUseCase<User?> {
  final Repository<User> users;
  final String currentUserId;

  GetCurrentUserUseCase(this.users, this.currentUserId);

  @override
  Future<User?> run() async {
    if (currentUserId.isEmpty) {
      return null;
    }

    return await users.byId(currentUserId);
  }
}

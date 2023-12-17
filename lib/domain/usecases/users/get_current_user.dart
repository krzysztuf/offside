import 'package:offside/domain/entities/user.dart';
import 'package:offside/domain/repositories/repository.dart';
import 'package:offside/domain/usecases/use_case.dart';

class GetCurrentUser implements UseCase<Future<User?>> {
  final Repository<User> users;

  GetCurrentUser(this.users);

  @override
  Future<User?> run() async {
    // final userId = AppPreferences.currentUserId.value;
    // if (userId == -1) {
    //   return null;
    // }
    //
    // return await users.byId(userId);
    return users.byId(1);
  }
}

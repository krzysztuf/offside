import 'package:offside/domain/models/user.dart';

abstract class UsersRepository {
  Future<List<User>> all();

  Future<User> getById({required String id});
}

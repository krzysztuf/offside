import 'package:offside/core/preferences/app_preferences.dart';
import 'package:offside/domain/models/user.dart';
import 'package:offside/domain/repositories/repository.dart';

class GetCurrentUser {
  final Repository<User> users;

  GetCurrentUser(this.users);

  Future<User?> run() async {
    final userId = AppPreferences.currentUserId.value;
    if (userId == -1) {
      return null;
    }

    return await users.byId(userId);
  }
}

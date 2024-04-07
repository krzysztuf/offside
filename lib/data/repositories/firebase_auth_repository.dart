import 'package:offside/data/sources/remote/firebase_auth_source.dart';
import 'package:offside/domain/entities/user.dart';
import 'package:offside/domain/repositories/auth_repository.dart';
import 'package:offside/domain/repositories/repository.dart';

class FirebaseAuthRepository implements AuthRepository {
  final Repository<User> users;

  FirebaseAuthRepository(this.users);

  @override
  Future<User?> currentUser() async {
    final firebaseUser = FirebaseAuthSource.currentUser;
    if (firebaseUser == null) {
      return null;
    }

    final usersWithUid = await users.where("firebaseId", isEqualTo: firebaseUser.uid);
    if (usersWithUid.length > 1) {
      throw Exception('More than one user with uid: ${firebaseUser.uid}');
    }

    return usersWithUid.firstOrNull;
  }

  @override
  Future<User> login(String email, String password) {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  Future<void> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }

  @override
  Future<User> register(String email, String password) {
    // TODO: implement register
    throw UnimplementedError();
  }
}

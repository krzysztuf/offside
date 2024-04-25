import 'package:offside/data/sources/remote/firebase_auth_source.dart';
import 'package:offside/data/sources/remote/firestore_source.dart';
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

    return await _findUserWithUid(firebaseUser.uid);
  }

  @override
  Future<User> logIn(String email, String password) async {
    final firebaseUser = await FirebaseAuthSource.signIn(email, password);
    if (firebaseUser == null) {
      throw Exception('User not found');
    }

    var user = await _findUserWithUid(firebaseUser.uid);
    return user ?? User(firebaseId: firebaseUser.uid, name: '', surname: '');
  }

  @override
  Future<void> logOut() {
    return FirebaseAuthSource.signOut();
  }

  @override
  Future<User> register(String email, String password) {
    // TODO: implement register
    throw UnimplementedError();
  }

  Future<User?> _findUserWithUid(String uid) async {
    final usersWithUid = await users.where("firebaseId", isEqualTo: uid);
    if (usersWithUid.length > 1) {
      throw Exception('More than one user with uid: $uid');
    }

    return usersWithUid.firstOrNull;
  }

  @override
  Future<bool> isEmailWhitelisted(String email) async {
    final result = await FirestoreSource.settings.doc('whitelist').get();
    
    final whitelist = result.data()!.value.split(',');
    return whitelist.contains(email);
  }
}

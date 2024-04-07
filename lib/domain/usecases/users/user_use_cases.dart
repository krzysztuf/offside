import 'package:firebase_auth/firebase_auth.dart' as firebase;
import 'package:offside/domain/entities/bet.dart';
import 'package:offside/domain/entities/user.dart';
import 'package:offside/domain/repositories/bets_repository.dart';
import 'package:offside/domain/repositories/repository.dart';
import 'package:offside/domain/usecases/async_use_case.dart';

class GetLoggedInUserUseCase implements AsyncUseCase<User?> {
  final Repository<User> users;

  GetLoggedInUserUseCase(this.users);

  @override
  Future<User?> run() async {
    final firebaseUser = firebase.FirebaseAuth.instance.currentUser;
    if (firebaseUser == null) {
      return null;
    }

    final usersWithUid = await users.where("firebaseId", isEqualTo: firebaseUser.uid);
    if (usersWithUid.length > 1) {
      throw Exception('More than one user with uid: ${firebaseUser.uid}');
    }

    return usersWithUid.firstOrNull;
  }
}

class GetUserBetsUseCase implements AsyncUseCase<List<Bet>> {
  final BetsRepository repository;
  final User user;

  GetUserBetsUseCase(this.repository, this.user);

  @override
  Future<List<Bet>> run() async {
    return await repository.getUserBets(user);
  }
}

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

class GetAllUsersUseCase implements AsyncUseCase<List<User>> {
  final Repository<User> users;

  GetAllUsersUseCase(this.users);

  @override
  Future<List<User>> run() {
    return users.all();
  }
}

class AddUserUseCase implements AsyncUseCaseWithParam<String, User> {
  final Repository<User> users;

  AddUserUseCase(this.users);

  @override
  Future<String> run(User user) {
    return users.add(user);
  }
}

import 'package:offside/core/utils/timed_cache.dart';
import 'package:offside/domain/entities/bet.dart';
import 'package:offside/domain/entities/user.dart';
import 'package:offside/domain/repositories/auth_repository.dart';
import 'package:offside/domain/repositories/image_repository.dart';
import 'package:offside/domain/repositories/offside_repository.dart';
import 'package:offside/domain/repositories/repository.dart';
import 'package:offside/domain/usecases/async_use_case.dart';
import 'package:supercharged/supercharged.dart';

class GetLoggedInUserUseCase implements AsyncUseCase<User?> {
  final AuthRepository authRepository;

  GetLoggedInUserUseCase(this.authRepository);

  @override
  Future<User?> run() {
    return authRepository.currentUser();
  }
}

class GetUserBetsUseCase implements AsyncUseCase<List<Bet>> {
  static final userBetsCaches = <String, TimedCache<List<Bet>>>{};

  final OffsideRepository repository;
  final User user;

  GetUserBetsUseCase(this.repository, this.user) {
    if (!userBetsCaches.containsKey(user.id)) {
      userBetsCaches[user.id] = TimedCache<List<Bet>>(2.hours);
    }
  }

  @override
  Future<List<Bet>> run() async {
    final cache = userBetsCaches[user.id]!;
    return cache.valueOr(updateWith: () => repository.userBets(user));
  }
}

class GetCurrentUserUseCase implements AsyncUseCase<User?> {
  static final cache = TimedCache<User>(2.hours);

  final Repository<User> users;
  final String currentUserId;

  GetCurrentUserUseCase(this.users, this.currentUserId);

  @override
  Future<User?> run() async {
    if (currentUserId.isEmpty) {
      return null;
    }

    if (cache.isValid) {
      return cache.value;
    }

    final user = await users.byId(currentUserId);
    if (user != null) {
      cache.value = user;
    }

    return user;
  }
}

class GetAllUsersUseCase implements AsyncUseCase<List<User>> {
  static final cache = TimedCache<List<User>>(200.days);

  final Repository<User> usersRepository;

  GetAllUsersUseCase(this.usersRepository);

  @override
  Future<List<User>> run() async {
    return cache.valueOr(updateWith: () async {
      final users = await usersRepository.all();
      return users.where((user) => user.firebaseId != "vxLxo3VBnHSJYMUi0Xy1sOYodpd2").toList();
    });
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

class RemoveUserUseCase implements AsyncUseCaseWithParam<void, User> {
  final Repository<User> users;

  RemoveUserUseCase(this.users);

  @override
  Future<void> run(User user) {
    return users.remove(user);
  }
}

class UpdateUserUseCase implements AsyncUseCaseWithParam<void, User> {
  final Repository<User> users;

  UpdateUserUseCase(this.users);

  @override
  Future<void> run(User user) {
    return users.update(user);
  }
}

class UploadUserAvatarUseCase implements AsyncUseCaseWithParams<User, User, String> {
  final Repository<User> users;
  final ImageRepository imageRepository;

  UploadUserAvatarUseCase(this.users, this.imageRepository);

  @override
  Future<User> run(User user, String imagePath) async {
    final id = await imageRepository.upload(imagePath);

    var updatedUser = user.copyWith(image: id);
    users.update(updatedUser);

    return updatedUser;
  }
}

class EmailIsWhiteListedUseCase implements AsyncUseCaseWithParam<bool, String> {
  final AuthRepository authRepository;

  EmailIsWhiteListedUseCase(this.authRepository);

  @override
  Future<bool> run(String email) {
    return authRepository.isEmailWhitelisted(email);
  }
}

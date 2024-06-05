import 'package:offside/domain/entities/bet.dart';
import 'package:offside/domain/entities/user.dart';
import 'package:offside/domain/repositories/auth_repository.dart';
import 'package:offside/domain/repositories/image_repository.dart';
import 'package:offside/domain/repositories/offside_repository.dart';
import 'package:offside/domain/repositories/repository.dart';
import 'package:offside/domain/usecases/async_use_case.dart';

class GetLoggedInUserUseCase implements AsyncUseCase<User?> {
  final AuthRepository authRepository;

  GetLoggedInUserUseCase(this.authRepository);

  @override
  Future<User?> run() {
    return authRepository.currentUser();
  }
}

class GetUserBetsUseCase implements AsyncUseCase<List<Bet>> {
  final OffsideRepository repository;
  final User user;

  GetUserBetsUseCase(this.repository, this.user);

  @override
  Future<List<Bet>> run() async {
    return await repository.userBets(user);
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
  final Repository<User> usersRepository;

  GetAllUsersUseCase(this.usersRepository);

  @override
  Future<List<User>> run() async {
    final users = await usersRepository.all();
    return users.where((user) => user.firebaseId != "vxLxo3VBnHSJYMUi0Xy1sOYodpd2").toList();
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

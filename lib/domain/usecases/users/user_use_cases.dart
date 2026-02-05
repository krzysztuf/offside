import 'package:offside/domain/entities/user.dart';
import 'package:offside/domain/repositories/image_repository.dart';
import 'package:offside/domain/repositories/repository.dart';
import 'package:offside/domain/usecases/async_use_case.dart';

class GetCurrentUserUseCase implements AsyncUseCase<User?> {
  final Repository<User> users;
  final int currentUserId;

  GetCurrentUserUseCase(this.users, this.currentUserId);

  @override
  Future<User?> run() async {
    if (currentUserId == 0) {
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
    return users.toList();
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

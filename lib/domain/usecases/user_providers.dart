import 'package:offside/data/repositories/providers.dart';
import 'package:offside/domain/entities/user.dart';
import 'package:offside/domain/usecases/settings_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_providers.g.dart';

@riverpod
Future<User?> currentUser(Ref ref) async {
  final usersRepository = ref.read(usersRepositoryProvider);
  final currentUserId = ref.watch(currentUserIdSettingProvider);

  if (currentUserId == 0) {
    return null;
  }
  return await usersRepository.byId(currentUserId);
}

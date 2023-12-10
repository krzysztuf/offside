import 'package:offside/data/repositories/providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'get_current_user.dart';

part 'user_use_cases.g.dart';

@riverpod
GetCurrentUser currentUserUseCase(CurrentUserUseCaseRef ref) {
  return GetCurrentUser(ref.read(usersRepositoryProvider));
}

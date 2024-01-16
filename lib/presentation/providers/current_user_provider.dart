import 'package:offside/domain/entities/user.dart';
import 'package:offside/domain/usecases/users/user_use_cases.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'current_user_provider.g.dart';

@riverpod
class CurrentUser extends _$CurrentUser {
  @override
  FutureOr<User?> build() async {
    return ref.read(currentUserUseCaseProvider).run();
  }
}

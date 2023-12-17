import 'package:offside/domain/entities/user.dart';
import 'package:offside/domain/usecases/users/user_use_cases.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supercharged/supercharged.dart';

part 'current_user_provider.g.dart';

@riverpod
class CurrentUser extends _$CurrentUser {
  @override
  FutureOr<User?> build() async {
    await Future.delayed(2.seconds);
    return ref.read(currentUserUseCaseProvider).run();
  }
}

import 'package:offside/domain/models/user.dart';
import 'package:offside/domain/usecases/users/get_current_user_use_case_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supercharged/supercharged.dart';

part 'current_user_provider.g.dart';

@riverpod
class CurrentUser extends _$CurrentUser {
  @override
  FutureOr<User?> build() async {
    await Future.delayed(2.seconds);
    return ref.read(getCurrentUserUseCaseProvider).run();
  }
}

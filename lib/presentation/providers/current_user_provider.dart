import 'package:offside/domain/entities/user.dart';
import 'package:offside/domain/usecases/settings/reactive_settings_providers.dart';
import 'package:offside/domain/usecases/users/user_use_case_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'current_user_provider.g.dart';

@riverpod
class CurrentUser extends _$CurrentUser {
  @override
  FutureOr<User?> build() async {
    // ref.watch(currentUserIdSettingProvider);
    // return ref.read(getCurrentUserUseCaseProvider).run();
    return User(id: 10, name: 'Krzystof', surname: 'Potrząsaj');
  }
}

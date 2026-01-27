import 'package:offside/domain/usecases/settings/reactive_settings_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_is_admin.g.dart';

@riverpod
bool userIsAdmin(Ref ref) {
  return ref.watch(currentUserIdSettingProvider) == 'h7yVtQFIwgfdvF66afLo';
}

import 'package:offside/domain/usecases/settings/reactive_settings_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_is_admin.g.dart';

@riverpod
bool userIsAdmin(UserIsAdminRef ref) {
  return ref.watch(currentUserIdSettingProvider) == '8YJAzYxecm0OgOWKMW3u';
}

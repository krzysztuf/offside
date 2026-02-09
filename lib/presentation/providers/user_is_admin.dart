import 'package:offside/domain/usecases/settings_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_is_admin.g.dart';

@riverpod
bool userIsAdmin(Ref ref) {
  // Admin user ID (replace with actual admin user ID from API)
  const adminUserId = 1;
  return ref.watch(currentUserIdSettingProvider) == adminUserId;
}

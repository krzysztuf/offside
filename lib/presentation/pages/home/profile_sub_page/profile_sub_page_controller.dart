import 'package:offside/domain/usecases/auth/auth_use_case_providers.dart';
import 'package:offside/domain/usecases/users/user_use_case_providers.dart';
import 'package:offside/presentation/pages/home/profile_sub_page/profile_sub_page_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'profile_sub_page_controller.g.dart';

@riverpod
class ProfileSubPageController extends _$ProfileSubPageController {
  @override
  ProfileSubPageState build() {
    _loadCurrentUser();
    return const ProfileSubPageState(loading: true);
  }

  Future<void> _loadCurrentUser() async {
    final currentUser = await ref.read(getCurrentUserUseCaseProvider).run();
    state = state.copyWith(user: currentUser, loading: false);
  }

  Future<void> updateProfileImage(String imagePath) async {
    // state = state.copyWith(user: state.user!.copyWith(imagePath: imagePath));
    // await ref.read(updateUserUseCaseProvider).run(state.user!);
  }

  Future<void> logOut() async {
    return ref.read(logOutUseCaseProvider).run();
  }
}

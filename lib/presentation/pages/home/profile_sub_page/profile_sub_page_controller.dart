import 'dart:developer';

import 'package:offside/domain/usecases/auth/auth_use_case_providers.dart';
import 'package:offside/domain/usecases/users/user_use_case_providers.dart';
import 'package:offside/presentation/pages/home/profile_sub_page/profile_sub_page_state.dart';
import 'package:offside/presentation/providers/current_user_provider.dart';
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
    state = state.copyWith(uploading: true);

    try {
      final updatedUser = await ref.read(uploadUserAvatarUseCaseProvider).run(state.user!, imagePath);
      ref.invalidate(currentUserProvider);
      state = state.copyWith(user: updatedUser, uploading: false);
    } catch (e) {
      log(e.toString());
      state = state.copyWith(uploading: false);
      rethrow;
    }

    state = state.copyWith(uploading: false);
  }

  Future<void> removeUser() async {
    try {
      await ref.read(removeUserUseCaseProvider).run(state.user!);
      await logOut();
    } catch (e) {
      log(e.toString());
    }
  }

  Future<void> logOut() async {
    return ref.read(logOutUseCaseProvider).run();
  }
}

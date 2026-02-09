import 'dart:developer';

import 'package:offside/data/repositories/providers.dart';
import 'package:offside/domain/usecases/user_providers.dart';
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
    final user = await ref.read(currentUserProvider.future);
    state = state.copyWith(user: user, loading: false);
  }

  Future<void> updateProfileImage(String imagePath) async {
    state = state.copyWith(uploading: true);

    try {
      final updatedUser = await ref.read(uploadUserAvatarProvider(state.user!, imagePath).future);
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
      await ref.read(usersRepositoryProvider).remove(state.user!);
      await logOut();
    } catch (e) {
      log(e.toString());
    }
  }

  Future<void> logOut() async {
    return ref.read(authRepositoryProvider).logOut();
  }
}

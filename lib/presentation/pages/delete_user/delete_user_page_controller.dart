import 'dart:developer';

import 'package:offside/domain/usecases/auth_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supercharged/supercharged.dart';

part 'delete_user_page_controller.g.dart';

@riverpod
class DeleteUserPageController extends _$DeleteUserPageController {
  @override
  void build() {}

  Future<void> deleteUser(String email, String password) async {
    try {
      final userId = await ref.read(logInProvider(email, password).future);
      await Future.delayed(1.seconds);
      log('removing user with id: $userId');
    } catch (e) {
      rethrow;
    }
  }
}

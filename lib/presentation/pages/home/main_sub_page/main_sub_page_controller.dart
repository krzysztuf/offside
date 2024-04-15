import 'package:offside/domain/usecases/users/user_use_case_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'main_sub_page_states.dart';

part 'main_sub_page_controller.g.dart';

@riverpod
class MainSubPageController extends _$MainSubPageController {
  @override
  MainSubPageState build() {
    loadTable();
    return LoadingMainTableState();
  }

  Future<void> loadTable() async {
    final users = await ref.read(getAllUsersUseCaseProvider).run();
    state = MainTableReadyState(users);
  }

  Future<void> refresh({Duration? delay}) async {
    if (delay != null) {
      await Future.delayed(delay);
    }

    loadTable();
  }
}

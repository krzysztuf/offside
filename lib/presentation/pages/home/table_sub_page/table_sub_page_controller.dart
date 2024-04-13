import 'dart:developer';

import 'package:offside/data/repositories/providers.dart';
import 'package:offside/domain/usecases/users/user_use_case_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'table_sub_page_states.dart';

part 'table_sub_page_controller.g.dart';

@riverpod
class TableSubPageController extends _$TableSubPageController {
  @override
  TableSubPageState build() {
    loadTable();
    return LoadingMainTableState();
  }

  Future<void> loadTable() async {
    final users = await ref.read(getAllUsersUseCaseProvider).run();
    state = MainTableReadyState(users);

    final matches = await ref.read(offsideRepositoryProvider).matchesHistory();
    log('matches: $matches');
  }

  Future<void> refresh({Duration? delay}) async {
    if (delay != null) {
      await Future.delayed(delay);
    }

    loadTable();
  }
}

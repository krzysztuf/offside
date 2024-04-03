import 'package:offside/domain/usecases/users/user_use_case_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supercharged/supercharged.dart';

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
    await Future.delayed(1.seconds);
    final users = await ref.read(getAllUsersUseCaseProvider).run();
    state = MainTableReadyState(users);
  }
}

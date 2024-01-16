import 'package:offside/domain/usecases/users/user_use_cases.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'table_sub_page_states.dart';

part 'table_sub_page_view_model.g.dart';

@riverpod
class TableSubPageViewModel extends _$TableSubPageViewModel {
  @override
  TableSubPageState build() {
    loadTable();
    return LoadingMainTableState();
  }

  Future<void> loadTable() async {
    final users = await ref.read(allUsersUseCaseProvider).run();
    state = MainTableReadyState(users);
  }
}

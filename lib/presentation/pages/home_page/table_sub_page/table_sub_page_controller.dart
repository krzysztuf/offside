import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'table_sub_page_states.dart';

part 'table_sub_page_controller.g.dart';

@riverpod
class TableSubPageController extends _$TableSubPageController {
  @override
  TableSubPageState build() {
    // Future.delayed(2.seconds).then((_) => state = TableSubPageState());
    return LoadingMainTableState();
  }
}

import 'package:offside/domain/usecases/private_tables/private_tables_use_case_providers.dart';
import 'package:offside/presentation/pages/home/main_sub_page/private_tables/private_tables_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'private_tables_controller.g.dart';

@riverpod
class PrivateTablesController extends _$PrivateTablesController {
  @override
  PrivateTablesState build() {
    ref.read(getAllPrivateTablesUseCaseProvider).run().then((tables) {
      state = state.copyWith(tables: tables);
    });
    
    return const PrivateTablesState(tables: []);
  }
}

import 'package:offside/domain/entities/private_table.dart';
import 'package:offside/domain/usecases/private_tables/private_tables_use_case_providers.dart';
import 'package:offside/presentation/pages/home/main_sub_page/private_tables/private_tables_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'private_tables_controller.g.dart';

@riverpod
class PrivateTablesController extends _$PrivateTablesController {
  @override
  PrivateTablesState build() {
    refresh();
    return const PrivateTablesState(tables: []);
  }

  Future<void> updateMembers(PrivateTable table, Set<String> selectedMembers) async {
    final updatedTable = table.copyWith(memberIds: selectedMembers.toList());
    await ref.read(updatePrivateTableUseCaseProvider).run(updatedTable);
    state = state.copyWith(tables: state.tables.map((t) => t.id == table.id ? updatedTable : t).toList());
  }

  Future<void> add(PrivateTable table) async {
    await ref.read(addPrivateTableUseCaseProvider).run(table);
    state = state.copyWith(tables: [...state.tables, table]);
  }

  Future<void> remove(PrivateTable table) async {
    await ref.read(removePrivateTableUseCaseProvider).run(table);
    state = state.copyWith(tables: state.tables.where((t) => t.id != table.id).toList());
  }

  Future<void> refresh() async {
    final tables = await ref.read(getAllPrivateTablesUseCaseProvider).run();
    state = state.copyWith(tables: tables);
  }

  Future<void> removeMember(String userId, PrivateTable table) async {
    final updatedTable = table.copyWith(memberIds: table.memberIds.where((mid) => mid != userId).toList());
    await ref.read(updatePrivateTableUseCaseProvider).run(updatedTable);
    state = state.copyWith(tables: state.tables.map((t) => t.id == table.id ? updatedTable : t).toList());
  }
}

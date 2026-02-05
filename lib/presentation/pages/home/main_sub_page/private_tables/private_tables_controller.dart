import 'package:offside/data/repositories/providers.dart';
import 'package:offside/domain/entities/private_table.dart';
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

  Future<void> updateMembers(PrivateTable table, Set<int> selectedMembers) async {
    final updatedTable = table.copyWith(memberIds: selectedMembers.toList());
    await ref.read(privateTablesRepositoryProvider).update(updatedTable);
    state = state.copyWith(tables: state.tables.map((t) => t.id == table.id ? updatedTable : t).toList());
  }

  Future<void> add(PrivateTable table) async {
    await ref.read(privateTablesRepositoryProvider).add(table);
    state = state.copyWith(tables: [...state.tables, table]);
  }

  Future<void> remove(PrivateTable table) async {
    await ref.read(privateTablesRepositoryProvider).remove(table);
    state = state.copyWith(tables: state.tables.where((t) => t.id != table.id).toList());
  }

  Future<void> refresh() async {
    final tables = await ref.read(privateTablesRepositoryProvider).all();
    state = state.copyWith(tables: tables);
  }

  Future<void> removeMember(int userId, PrivateTable table) async {
    final updatedTable = table.copyWith(memberIds: table.memberIds.where((mid) => mid != userId).toList());
    await ref.read(privateTablesRepositoryProvider).update(updatedTable);
    state = state.copyWith(tables: state.tables.map((t) => t.id == table.id ? updatedTable : t).toList());
  }
}

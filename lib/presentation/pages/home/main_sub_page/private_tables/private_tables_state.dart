import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:offside/domain/entities/private_table.dart';

part 'private_tables_state.freezed.dart';

@freezed
sealed class PrivateTablesState with _$PrivateTablesState {
  const factory PrivateTablesState({
    required List<PrivateTable> tables,
  }) = _PrivateTablesState;

  const PrivateTablesState._();
}

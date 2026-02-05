// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'private_table.freezed.dart';
part 'private_table.g.dart';

@freezed
sealed class PrivateTable with _$PrivateTable {
  const factory PrivateTable({
    @Default(0) int id,
    required String name,
    required int ownerId,
    required List<int> memberIds,
  }) = _PrivateTable;

  const PrivateTable._();

  factory PrivateTable.fromJson(Map<String, dynamic> json) => _$PrivateTableFromJson(json);
}

// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'private_table.freezed.dart';
part 'private_table.g.dart';

@freezed
sealed class PrivateTable with _$PrivateTable {
  const factory PrivateTable({
    @Default('') String id,
    required String name,
    required String ownerId,
    required List<String> memberIds,
  }) = _PrivateTable;

  const PrivateTable._();

  factory PrivateTable.fromJson(Map<String, dynamic> json) => _$PrivateTableFromJson(json);
}

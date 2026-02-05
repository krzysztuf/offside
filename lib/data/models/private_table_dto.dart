// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:offside/domain/entities/private_table.dart';

part 'private_table_dto.freezed.dart';
part 'private_table_dto.g.dart';

@freezed
sealed class PrivateTableDto with _$PrivateTableDto {
  const factory PrivateTableDto({
    required int id,
    required String name,
    @JsonKey(name: 'owner_id') required int ownerId,
    @JsonKey(name: 'member_ids') required List<int> memberIds,
  }) = _PrivateTableDto;

  const PrivateTableDto._();

  factory PrivateTableDto.fromJson(Map<String, dynamic> json) => _$PrivateTableDtoFromJson(json);

  PrivateTable toEntity() => PrivateTable(
    id: id,
    name: name,
    ownerId: ownerId,
    memberIds: memberIds,
  );
}

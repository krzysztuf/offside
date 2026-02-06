import 'package:dart_mappable/dart_mappable.dart';
import 'package:offside/domain/entities/private_table.dart';

part 'private_table_dto.mapper.dart';

@MappableClass()
class PrivateTableDto with PrivateTableDtoMappable {
  final int id;
  final String name;
  @MappableField(key: 'owner_id')
  final int ownerId;
  @MappableField(key: 'member_ids')
  final List<int> memberIds;

  const PrivateTableDto({
    required this.id,
    required this.name,
    required this.ownerId,
    required this.memberIds,
  });

  PrivateTable toEntity() => PrivateTable(
    id: id,
    name: name,
    ownerId: ownerId,
    memberIds: memberIds,
  );
}

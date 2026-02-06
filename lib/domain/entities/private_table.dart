import 'package:dart_mappable/dart_mappable.dart';

part 'private_table.mapper.dart';

@MappableClass()
class PrivateTable with PrivateTableMappable {
  final int id;
  final String name;
  final int ownerId;
  final List<int> memberIds;

  const PrivateTable({
    this.id = 0,
    required this.name,
    required this.ownerId,
    required this.memberIds,
  });
}

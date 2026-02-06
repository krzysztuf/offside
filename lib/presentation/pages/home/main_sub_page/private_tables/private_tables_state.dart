import 'package:dart_mappable/dart_mappable.dart';
import 'package:offside/domain/entities/private_table.dart';

part 'private_tables_state.mapper.dart';

@MappableClass()
class PrivateTablesState with PrivateTablesStateMappable {
  final List<PrivateTable> tables;

  const PrivateTablesState({
    required this.tables,
  });
}

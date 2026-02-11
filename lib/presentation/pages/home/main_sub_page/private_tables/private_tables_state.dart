import 'package:offside/domain/entities/private_table.dart';

class PrivateTablesData {
  final List<PrivateTable> tables;

  const PrivateTablesData({required this.tables});

  PrivateTablesData copyWith({List<PrivateTable>? tables}) {
    return PrivateTablesData(tables: tables ?? this.tables);
  }
}

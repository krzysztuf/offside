import 'package:offside/data/sources/offside_api.dart';
import 'package:offside/domain/entities/private_table.dart';
import 'package:offside/domain/repositories/repository.dart';

class PrivateTableRepository implements Repository<PrivateTable> {
  final OffsideApi _api;

  PrivateTableRepository(this._api);

  @override
  Future<List<PrivateTable>> all() async {
    final dtos = await _api.getPrivateTables();
    return dtos.map((dto) => dto.toEntity()).toList();
  }

  @override
  Future<List<PrivateTable>> first(int count) async {
    final allItems = await all();
    return allItems.take(count).toList();
  }

  @override
  Future<int> add(PrivateTable item) async {
    return 0;
  }

  @override
  Future<PrivateTable?> byId(int id) async {
    if (id == 0) return null;
    try {
      final dto = await _api.getPrivateTableById(id);
      return dto.toEntity();
    } catch (e) {
      return null;
    }
  }

  @override
  Future<List<PrivateTable>> where(
    Object field, {
    Object? isEqualTo,
    Object? isNotEqualTo,
  }) async {
    return all();
  }

  @override
  Future<void> remove(PrivateTable item) async {}

  @override
  Future<void> update(PrivateTable item) async {}

  @override
  Future<void> clear() async {}
}

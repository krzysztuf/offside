import 'package:offside/data/sources/offside_api.dart';
import 'package:offside/domain/entities/match.dart';
import 'package:offside/domain/repositories/repository.dart';

class MatchRepository implements Repository<Match> {
  final OffsideApi _api;

  MatchRepository(this._api);

  @override
  Future<List<Match>> all() async {
    final teams = await _api.teams();
    final dtos = await _api.matches();
    return dtos.map((dto) => dto.toEntity(teams)).toList();
  }

  @override
  Future<List<Match>> first(int count) async {
    final allItems = await all();
    return allItems.take(count).toList();
  }

  @override
  Future<int> add(Match item) async {
    return 0;
  }

  @override
  Future<Match?> byId(int id) async {
    if (id == 0) return null;
    try {
      final teams = await _api.teams();
      final dto = await _api.matchById(id);
      return dto.toEntity(teams);
    } catch (e) {
      return null;
    }
  }

  @override
  Future<void> remove(Match item) async {}

  @override
  Future<void> update(Match item) async {}

  @override
  Future<void> clear() async {}
}

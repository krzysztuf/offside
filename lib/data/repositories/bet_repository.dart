import 'package:offside/data/sources/offside_api.dart';
import 'package:offside/domain/entities/bet.dart';
import 'package:offside/domain/repositories/repository.dart';

class BetRepository implements Repository<Bet> {
  final OffsideApi _api;

  BetRepository(this._api);

  @override
  Future<List<Bet>> all() async {
    final dtos = await _api.bets();
    return dtos.map((dto) => dto.toEntity()).toList();
  }

  @override
  Future<List<Bet>> first(int count) async {
    final allItems = await all();
    return allItems.take(count).toList();
  }

  @override
  Future<int> add(Bet item) async {
    return 0;
  }

  @override
  Future<Bet?> byId(int id) async {
    if (id == 0) return null;
    final bets = await all();
    try {
      return bets.firstWhere((bet) => bet.id == id);
    } catch (e) {
      return null;
    }
  }

  @override
  Future<List<Bet>> where(
    Object field, {
    Object? isEqualTo,
    Object? isNotEqualTo,
  }) async {
    if (field == 'userId' && isEqualTo != null) {
      final userId = isEqualTo is int ? isEqualTo : int.tryParse(isEqualTo.toString());
      if (userId != null) {
        final dtos = await _api.betsByUserId(userId);
        return dtos.map((dto) => dto.toEntity()).toList();
      }
    }

    if (field == 'matchId' && isEqualTo != null) {
      final matchId = isEqualTo is int ? isEqualTo : int.tryParse(isEqualTo.toString());
      if (matchId != null) {
        final dtos = await _api.betsByMatchId(matchId);
        return dtos.map((dto) => dto.toEntity()).toList();
      }
    }

    return all();
  }

  @override
  Future<void> remove(Bet item) async {}

  @override
  Future<void> update(Bet item) async {}

  @override
  Future<void> clear() async {}
}

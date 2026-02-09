import 'package:offside/data/models/bet_dto.dart';
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
  Future<int> add(Bet bet) async {
    await update(bet);
    return -1;
  }

  @override
  Future<Bet?> byId(int id) async {
    return null;
  }

  @override
  Future<void> remove(Bet item) async {}

  @override
  Future<void> update(Bet bet) async {
    final betDto = BetDto(
      matchId: bet.matchId,
      userId: bet.userId,
      homeGoalsPrediction: bet.prediction.goals.home,
      awayGoalsPrediction: bet.prediction.goals.away,
    );

    await _api.placeBet(betDto);
  }

  @override
  Future<void> clear() async {}
}

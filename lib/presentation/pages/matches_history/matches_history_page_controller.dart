import 'package:offside/data/repositories/providers.dart';
import 'package:offside/domain/entities/bet.dart';
import 'package:offside/domain/entities/match.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'matches_history_page_controller.g.dart';

class MatchesHistoryState {
  final Map<DateTime, List<Match>> matches;
  final Map<int, List<Bet>> betsByMatchId;

  MatchesHistoryState(this.matches, {this.betsByMatchId = const {}});
}

@riverpod
class MatchesHistoryPageController extends _$MatchesHistoryPageController {
  @override
  Future<MatchesHistoryState> build() async {
    final results = await Future.wait([
      ref.read(offsideRepositoryProvider).matchesHistory(),
      ref.read(betsRepositoryProvider).all(),
    ]);

    final matches = results[0] as List<Match>;
    final bets = results[1] as List<Bet>;

    return MatchesHistoryState(
      matches.groupByDay(),
      betsByMatchId: bets.groupByMatchId(),
    );
  }
}

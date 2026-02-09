import 'package:offside/data/repositories/providers.dart';
import 'package:offside/domain/entities/bet.dart';
import 'package:offside/domain/entities/match.dart';
import 'package:offside/domain/usecases/match_providers.dart';
import 'package:offside/domain/usecases/settings_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'matches_sub_page_states.dart';

part 'matches_sub_page_controller.g.dart';

@riverpod
class MatchesSubPageController extends _$MatchesSubPageController {
  @override
  MatchesSubPageState build() {
    ref.watch(currentUserIdSettingProvider);
    refresh();

    return MatchesSubPageState({});
  }

  Future<void> refresh({Duration? delay}) async {
    if (delay != null) {
      await Future.delayed(delay);
    }

    final results = await Future.wait([
      ref.read(upcomingMatchesProvider.future),
      ref.read(betsRepositoryProvider).all(),
    ]);

    final matches = results[0] as List<Match>;
    final bets = results[1] as List<Bet>;

    state = MatchesSubPageState(
      matches.groupByDay(),
      betsByMatchId: bets.groupByMatchId(),
    );
  }
}

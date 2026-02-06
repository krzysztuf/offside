import 'dart:collection';

import 'package:offside/core/extensions/date_time_extensions.dart';
import 'package:offside/data/repositories/providers.dart';
import 'package:offside/domain/entities/bet.dart';
import 'package:offside/domain/entities/match.dart';
import 'package:offside/domain/usecases/settings/reactive_settings_providers.dart';
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

  Map<DateTime, List<Match>> _groupMatchesByDay(List<Match> matches) {
    return matches.fold(SplayTreeMap<DateTime, List<Match>>(), (map, match) {
      map.putIfAbsent(match.kickOffDate.date, () => []).add(match);
      return map;
    });
  }

  Map<int, List<Bet>> _groupBetsByMatchId(List<Bet> bets) {
    return bets.fold(<int, List<Bet>>{}, (map, bet) {
      map.putIfAbsent(bet.matchId, () => []).add(bet);
      return map;
    });
  }

  Future<void> refresh({Duration? delay}) async {
    if (delay != null) {
      await Future.delayed(delay);
    }

    final results = await Future.wait([
      ref.read(offsideRepositoryProvider).upcomingMatches(),
      ref.read(betsRepositoryProvider).all(),
    ]);

    final matches = results[0] as List<Match>;
    final bets = results[1] as List<Bet>;

    state = MatchesSubPageState(
      _groupMatchesByDay(matches),
      betsByMatchId: _groupBetsByMatchId(bets),
    );
  }
}

import 'dart:collection';

import 'package:offside/core/extensions/date_time_extensions.dart';
import 'package:offside/domain/entities/match.dart';
import 'package:offside/domain/usecases/match/match_use_cases.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'matches_sub_page_states.dart';

part 'matches_sub_page_view_model.g.dart';

@riverpod
class MatchesSubPageViewModel extends _$MatchesSubPageViewModel {
  @override
  MatchesSubPageState build() {
    ref.read(upcomingMatchesUseCaseProvider).run().then((matches) {
      final groupedMatches = _groupMatchesByDay(matches);
      state = MatchesSubPageState(groupedMatches);
    });

    return MatchesSubPageState({});
  }

  Map<DateTime, List<Match>> _groupMatchesByDay(List<Match> matches) {
    final groupedMatches = matches.fold(SplayTreeMap<DateTime, List<Match>>(), (map, match) {
      map.putIfAbsent(match.kickOffDate.date, () => []).add(match);
      return map;
    });
    return groupedMatches;
  }
}

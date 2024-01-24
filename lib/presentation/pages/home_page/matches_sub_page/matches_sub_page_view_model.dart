import 'dart:collection';

import 'package:offside/core/extensions/date_time_extensions.dart';
import 'package:offside/domain/entities/match.dart';
import 'package:offside/domain/usecases/match/match_use_cases.dart';
import 'package:offside/domain/usecases/settings/reactive_settings_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'matches_sub_page_states.dart';

part 'matches_sub_page_view_model.g.dart';

@riverpod
class MatchesSubPageViewModel extends _$MatchesSubPageViewModel {
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

  Future<void> refresh() async {
    ref.read(upcomingMatchesUseCaseProvider).run().then((matches) {
      state = MatchesSubPageState(_groupMatchesByDay(matches));
    });
  }
}

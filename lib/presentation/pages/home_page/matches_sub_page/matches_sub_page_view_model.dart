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
      Map<DateTime, List<Match>> groupedMatches = {};

      for (var match in matches) {
        final kickOffDay = match.kickOffDate.date;

        if (!groupedMatches.containsKey(kickOffDay)) {
          groupedMatches[kickOffDay] = [];
        }

        groupedMatches[kickOffDay]!.add(match);
      }

      state = MatchesSubPageState(groupedMatches);
    });

    return MatchesSubPageState({});
  }
}

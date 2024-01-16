import 'package:offside/domain/usecases/match/match_use_cases.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'matches_sub_page_states.dart';

part 'matches_sub_page_view_model.g.dart';

@riverpod
class MatchesSubPageViewModel extends _$MatchesSubPageViewModel {
  @override
  MatchesSubPageState build() {
    ref.read(upcomingMatchesUseCaseProvider).run().then((matches) {
      state = MatchesSubPageState(matches);
    });
    
    return MatchesSubPageState([]);
  }
}

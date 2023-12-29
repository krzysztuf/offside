import 'package:offside/domain/usecases/matches/matches_use_case_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'matches_sub_page_states.dart';

part 'matches_sub_page_view_model.g.dart';

@riverpod
class MatchesSubPageViewModel extends _$MatchesSubPageViewModel {
  @override
  MatchesSubPageViewModelState build() {
    ref.read(upcomingMatchesUseCaseProvider).run().then((matches) {
      state = MatchesSubPageViewModelState(matches);
    });
    
    return MatchesSubPageViewModelState([]);
  }
}

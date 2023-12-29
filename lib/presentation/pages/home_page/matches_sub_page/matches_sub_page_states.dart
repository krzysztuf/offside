import 'package:offside/domain/entities/match.dart';
import 'package:offside/presentation/view_state.dart';

class MatchesSubPageViewModelState extends ViewState {
  final List<Match> matches;

  MatchesSubPageViewModelState(this.matches);
}

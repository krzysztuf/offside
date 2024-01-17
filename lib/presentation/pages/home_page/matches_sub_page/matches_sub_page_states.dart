import 'package:offside/domain/entities/match.dart';
import 'package:offside/presentation/view_state.dart';

class MatchesSubPageState extends ViewState {
  final Map<DateTime, List<Match>> matches;

  MatchesSubPageState(this.matches);
}

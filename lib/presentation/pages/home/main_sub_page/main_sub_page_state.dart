import 'package:dart_mappable/dart_mappable.dart';
import 'package:offside/domain/entities/user_score_summary.dart';

part 'main_sub_page_state.mapper.dart';

@MappableClass()
class MainSubPageState with MainSubPageStateMappable {
  final List<UserScoreSummary> userScores;

  const MainSubPageState({
    required this.userScores,
  });
}

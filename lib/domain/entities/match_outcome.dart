import 'package:dart_mappable/dart_mappable.dart';

import 'goals.dart';

part 'match_outcome.mapper.dart';

@MappableClass()
class MatchOutcome with MatchOutcomeMappable {
  final Goals goals;
  final int? penaltiesWinnerId;

  const MatchOutcome({
    this.goals = const Goals(),
    this.penaltiesWinnerId,
  });
}

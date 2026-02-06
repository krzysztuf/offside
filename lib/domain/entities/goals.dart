import 'package:dart_mappable/dart_mappable.dart';

part 'goals.mapper.dart';

@MappableClass()
class Goals with GoalsMappable {
  final int home;
  final int away;

  const Goals({
    this.home = 0,
    this.away = 0,
  });

  @override
  bool operator ==(Object other) {
    return other is Goals && home == other.home && away == other.away;
  }

  @override
  int get hashCode {
    return home.hashCode ^ away.hashCode;
  }
}

extension GoalsConvenienceMethods on Goals {
  String get asString => '$home:$away';

  bool get homeTeamWins => home > away;

  bool get awayTeamWins => away > home;

  bool get draw => home == away;

  int get goalDifference => home - away;
}

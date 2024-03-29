import 'package:freezed_annotation/freezed_annotation.dart';

part 'goals.freezed.dart';
part 'goals.g.dart';

@freezed
class Goals with _$Goals {
  const factory Goals({
    @Default(0) int home,
    @Default(0) int away,
  }) = _Goals;

  const Goals._();

  factory Goals.fromJson(Map<String, dynamic> json) => _$GoalsFromJson(json);

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

  bool get homeTeamWon => home > away;

  bool get awayTeamWon => away > home;
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'match_points.freezed.dart';
part 'match_points.g.dart';

@freezed
class MatchPoints with _$MatchPoints {
  const factory MatchPoints({
    required int field,
  }) = _MatchPoints;

  const MatchPoints._();

  factory MatchPoints.fromJson(Map<String, dynamic> json) => _$MatchPointsFromJson(json);
}

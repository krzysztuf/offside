import 'package:freezed_annotation/freezed_annotation.dart';

import 'match.dart';

part 'competition.freezed.dart';
part 'competition.g.dart';

@freezed
sealed class Competition with _$Competition {
  const factory Competition({
    required String id,
    required String name,
    List<Match>? matches,
  }) = _Competition;

  factory Competition.fromJson(Map<String, dynamic> json) => _$CompetitionFromJson(json);
}

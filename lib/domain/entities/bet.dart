import 'package:freezed_annotation/freezed_annotation.dart';

import 'match.dart';
import 'team.dart';
import 'user.dart';

part 'bet.freezed.dart';
part 'bet.g.dart';

@freezed
class Bet with _$Bet {
  const factory Bet({
    required String id,
    required User user,
    required Match match,
    required Team chosenTeam, // Chosen team for the bet
  }) = _Bet;

  factory Bet.fromJson(Map<String, dynamic> json) => _$BetFromJson(json);
}

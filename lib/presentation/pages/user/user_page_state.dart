import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:offside/domain/entities/bet.dart';
import 'package:offside/domain/entities/match.dart';
import 'package:offside/domain/entities/user.dart';

part 'user_page_state.freezed.dart';

@freezed
sealed class UserPageState with _$UserPageState {
  const factory UserPageState({
    required User user,
    required List<Bet> bets,
    required List<Match> matches,
    required String winnerId,
  }) = _UserPageState;

  const UserPageState._();
}

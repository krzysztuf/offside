import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:offside/domain/entities/match.dart';
import 'package:offside/domain/entities/user.dart';

part 'user_page_state.freezed.dart';

@freezed
class UserPageState with _$UserPageState {
  const factory UserPageState({
    required User user,
    required List<Match> matches,
    required bool loading,
  }) = _UserPageState;

  const UserPageState._();
}

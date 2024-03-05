import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:offside/domain/entities/match.dart';

part 'user_page_state.freezed.dart';

@freezed
class UserPageState with _$UserPageState {
  const factory UserPageState({
    required bool loading,
    required List<Match> match,
  }) = _UserPageState;

  const UserPageState._();
}

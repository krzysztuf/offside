import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:offside/domain/entities/user.dart';

part 'main_table_state.freezed.dart';

class UserScores {
  final User user;
  int totalScore = 0;
  List<int> recentPredictionsScores = [];

  UserScores(this.user);
}

@freezed
class MainTableState with _$MainTableState {
  const factory MainTableState({
    required List<UserScores> userScores,
    @Default(true) bool calculating,
    @Default('') String winnerId,
  }) = _MainTableState;

  const MainTableState._();
}

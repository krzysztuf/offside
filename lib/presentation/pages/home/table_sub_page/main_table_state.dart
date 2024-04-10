import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:offside/domain/entities/user.dart';

part 'main_table_state.freezed.dart';

@freezed
class MainTableState with _$MainTableState {
  const factory MainTableState({
    required Map<User, int> userScores,
    @Default(true) bool calculating,
  }) = _MainTableState;

  const MainTableState._();
}

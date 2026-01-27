import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:offside/domain/entities/user.dart';

import 'match_outcome.dart';

part 'user_prediction.freezed.dart';

@freezed
sealed class UserPrediction with _$UserPrediction {
  const factory UserPrediction({
    required User user,
    required MatchOutcome? prediction,
  }) = _UserPrediction;

  const UserPrediction._();
}

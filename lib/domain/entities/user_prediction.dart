import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:offside/domain/entities/goals.dart';
import 'package:offside/domain/entities/user.dart';

part 'user_prediction.freezed.dart';

@freezed
class UserPrediction with _$UserPrediction {
  const factory UserPrediction({
    required User user,
    required Goals? prediction,
  }) = _UserPrediction;

  const UserPrediction._();
}

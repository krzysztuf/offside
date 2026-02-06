import 'package:dart_mappable/dart_mappable.dart';
import 'package:offside/domain/entities/user.dart';

import 'match_outcome.dart';

part 'user_prediction.mapper.dart';

@MappableClass()
class UserPrediction with UserPredictionMappable {
  final User user;
  final MatchOutcome? prediction;

  const UserPrediction({
    required this.user,
    required this.prediction,
  });
}

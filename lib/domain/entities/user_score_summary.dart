import 'package:offside/domain/entities/user.dart';

class UserScoreSummary {
  final User user;
  int totalScore = 0;
  List<int> recentPredictionsScores = [];

  UserScoreSummary(this.user);
}

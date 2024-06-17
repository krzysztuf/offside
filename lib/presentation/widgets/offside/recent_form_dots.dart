import 'package:flutter/material.dart';
import 'package:offside/core/extensions/list_extensions.dart';
import 'package:offside/core/extensions/theme_context_extension.dart';
import 'package:offside/core/extensions/widget_iterable_extensions.dart';
import 'package:offside/domain/entities/user_score_summary.dart';

class RecentFormDots extends StatelessWidget {
  final UserScoreSummary userScore;

  const RecentFormDots({super.key, required this.userScore});

  @override
  Widget build(BuildContext context) {
    final sharedTheme = context.widgetThemes.sharedWidgets;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          ...userScore.recentPredictionsScores.takeLast(9).map((score) => switch (score) {
                >= 3 => Container(
                    width: 8,
                    height: 8,
                    decoration:
                        BoxDecoration(color: sharedTheme.threePointsColor, borderRadius: BorderRadius.circular(4)),
                  ),
                >= 1 => Container(
                    width: 8,
                    height: 8,
                    decoration:
                        BoxDecoration(color: sharedTheme.onePointsColor, borderRadius: BorderRadius.circular(4)),
                  ),
                <= 0 => Container(
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(color: sharedTheme.noPointsColor, borderRadius: BorderRadius.circular(4)),
                  ),
                _ => throw UnimplementedError('Unknown score: $score'),
              })
        ].withGaps(8),
      ),
    );
  }
}

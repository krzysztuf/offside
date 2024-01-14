import 'package:flutter/material.dart';
import 'package:offside/core/extensions/theme_context_extension.dart';

import 'goals_input.dart';

class GoalsPredictionEditor extends StatefulWidget {
  final Function(int homeGoals, int awayGoals) onUpdated;

  const GoalsPredictionEditor({
    super.key,
    required this.onUpdated,
  });

  @override
  State<GoalsPredictionEditor> createState() => _GoalsPredictionEditorState();
}

class _GoalsPredictionEditorState extends State<GoalsPredictionEditor> {
  var homeGoals = 0;
  var awayGoals = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GoalsInput(onUpdated: (score) => _notifyPrediction(home: score)),
        Text(':', style: context.textTheme.titleLarge),
        GoalsInput(onUpdated: (score) => _notifyPrediction(away: score)),
      ],
    );
  }

  void _notifyPrediction({int? home, int? away}) {
    if (home != null) {
      homeGoals = home;
    }

    if (away != null) {
      awayGoals = away;
    }

    widget.onUpdated(homeGoals, awayGoals);
  }
}

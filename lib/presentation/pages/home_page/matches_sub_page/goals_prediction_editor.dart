import 'package:flutter/material.dart';
import 'package:offside/core/extensions/theme_context_extension.dart';
import 'package:offside/domain/entities/goals.dart';

import 'goals_input.dart';

class GoalsPredictionEditor extends StatefulWidget {
  final Function(Goals prediction) onUpdated;

  const GoalsPredictionEditor({
    super.key,
    required this.onUpdated,
  });

  @override
  State<GoalsPredictionEditor> createState() => _GoalsPredictionEditorState();
}

class _GoalsPredictionEditorState extends State<GoalsPredictionEditor> {
  var prediction = const Goals(home: 0, away: 0);

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
      prediction = prediction.copyWith(home: home);
    }

    if (away != null) {
      prediction = prediction.copyWith(away: away);
    }
    widget.onUpdated(prediction);
  }
}

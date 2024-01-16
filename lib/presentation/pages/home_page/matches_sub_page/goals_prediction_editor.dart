import 'package:flutter/material.dart';
import 'package:offside/core/extensions/theme_context_extension.dart';
import 'package:offside/domain/entities/goals.dart';

import 'goals_input.dart';

class GoalsPredictionEditor extends StatefulWidget {
  final Goals initialPrediction;
  final Function(Goals prediction) onUpdated;

  const GoalsPredictionEditor({
    super.key,
    required this.initialPrediction,
    required this.onUpdated,
  });

  @override
  State<GoalsPredictionEditor> createState() => _GoalsPredictionEditorState();
}

class _GoalsPredictionEditorState extends State<GoalsPredictionEditor> {
  late Goals prediction;

  @override
  void initState() {
    super.initState();
    prediction = widget.initialPrediction;
  }

  @override
  void didUpdateWidget(GoalsPredictionEditor oldWidget) {
    super.didUpdateWidget(oldWidget);
    prediction = widget.initialPrediction;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GoalsInput(
          initialValue: widget.initialPrediction.home,
          onUpdated: (score) => _notifyPrediction(home: score),
        ),
        Text(':', style: context.textTheme.titleLarge),
        GoalsInput(
          initialValue: widget.initialPrediction.away,
          onUpdated: (score) => _notifyPrediction(away: score),
        ),
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

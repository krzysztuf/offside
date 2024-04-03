import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:offside/domain/entities/goals.dart';
import 'package:offside/presentation/pages/home/matches_sub_page/goals_prediction_editor.dart';

class SetMatchResultDialog extends ConsumerStatefulWidget {
  final Goals? goals;
  final Function(Goals) onScoreSet;

  const SetMatchResultDialog({
    super.key,
    required this.goals,
    required this.onScoreSet,
  });

  static Future<void> show(BuildContext context, Goals? goals, Function(Goals) onScoreSet) async {
    return showDialog(
      context: context,
      builder: (context) => SetMatchResultDialog(
        goals: goals,
        onScoreSet: onScoreSet,
      ),
    );
  }

  @override
  ConsumerState createState() => _SetMatchResultDialogState();
}

class _SetMatchResultDialogState extends ConsumerState<SetMatchResultDialog> {
  late Goals editedGoals;

  @override
  void initState() {
    super.initState();
    editedGoals = widget.goals ?? const Goals();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Wynik meczu'),
      content: SizedBox(
        height: 160,
        child: Center(
          child: GoalsPredictionEditor(
            initialPrediction: editedGoals,
            editable: true,
            onUpdated: (prediction) => editedGoals = prediction,
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Anuluj'),
        ),
        TextButton(
          onPressed: () {
            widget.onScoreSet(editedGoals);
            Navigator.of(context).pop();
          },
          child: const Text('Zapisz'),
        ),
      ],
    );
  }
}

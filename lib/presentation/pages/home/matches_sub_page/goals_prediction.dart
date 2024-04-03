import 'package:flutter/material.dart';
import 'package:offside/core/extensions/theme_context_extension.dart';
import 'package:offside/domain/entities/goals.dart';

class GoalsPrediction extends StatelessWidget {
  final Goals prediction;

  const GoalsPrediction({
    super.key,
    required this.prediction,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          '${prediction.home}',
          style: context.widgetThemes.goalsInput.textTheme.copyWith(fontSize: 46),
        ),
        Text(
          ':',
          style: context.textTheme.titleLarge,
        ),
        Text(
          '${prediction.away}',
          style: context.widgetThemes.goalsInput.textTheme.copyWith(fontSize: 46),
        ),
      ],
    );
  }
}

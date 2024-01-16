import 'package:flutter/material.dart';
import 'package:offside/core/extensions/theme_context_extension.dart';

class GoalsPrediction extends StatelessWidget {
  final int home;
  final int away;

  const GoalsPrediction({
    super.key,
    required this.home,
    required this.away,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          '$home',
          style: context.widgets.goalsInput.textTheme.copyWith(fontSize: 46),
        ),
        Text(
          ':',
          style: context.textTheme.titleLarge,
        ),
        Text(
          '$away',
          style: context.widgets.goalsInput.textTheme.copyWith(fontSize: 46),
        ),
      ],
    );
  }
}

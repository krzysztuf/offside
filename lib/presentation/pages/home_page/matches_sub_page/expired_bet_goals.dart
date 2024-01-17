import 'package:flutter/material.dart';
import 'package:offside/core/extensions/theme_context_extension.dart';

class ExpiredBetGoals extends StatelessWidget {
  const ExpiredBetGoals({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text('-', style: context.textTheme.titleLarge),
        Text(':', style: context.textTheme.titleLarge),
        Text('-', style: context.textTheme.titleLarge),
      ],
    );
  }
}

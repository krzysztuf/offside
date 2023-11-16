import 'package:flutter/material.dart';

class DoubleLineText extends StatelessWidget {
  final String top;
  final String bottom;

  const DoubleLineText({super.key, required this.top, required this.bottom});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          top,
          maxLines: 1,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: 4),
        Text(
          bottom,
          style: Theme.of(context).textTheme.bodySmall,
          textAlign: TextAlign.justify,
        )
      ],
    );
  }
}

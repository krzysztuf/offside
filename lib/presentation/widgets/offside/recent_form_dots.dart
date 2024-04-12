import 'package:flutter/material.dart';
import 'package:offside/core/extensions/list_with_gaps.dart';
import 'package:offside/presentation/pages/home/table_sub_page/main_table_state.dart';

class RecentFormDots extends StatelessWidget {
  final UserScores userScores;

  const RecentFormDots({super.key, required this.userScores});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          ...userScores.recentPredictionsScores.map((score) => switch (score) {
                <= 0 => Container(
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(color: Colors.red.shade500, borderRadius: BorderRadius.circular(4)),
                  ),
                1 => Container(
                    width: 8,
                    height: 8,
                    decoration:
                        BoxDecoration(color: Colors.lightGreen.shade300, borderRadius: BorderRadius.circular(4)),
                  ),
                >= 3 => Container(
                    width: 8,
                    height: 8,
                    decoration:
                        BoxDecoration(color: Colors.lightGreen.shade700, borderRadius: BorderRadius.circular(4)),
                  ),
                _ => throw UnimplementedError('Unknown score: $score'),
              })
        ].withGaps(8),
      ),
    );
  }
}

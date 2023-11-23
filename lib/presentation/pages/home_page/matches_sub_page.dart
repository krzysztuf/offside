import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:offside/core/extensions/theme_context_extension.dart';

class MatchesSubPage extends ConsumerWidget {
  const MatchesSubPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Gap(16),
          Text(
            DateFormat('d MMMM yyyy', 'pl').format(DateTime(2023, 6, 6)),
            style: context.textTheme.titleLarge,
          ),
          const Gap(8),
          const Card(
            child: SizedBox(
              width: double.infinity,
              height: 120,
            ),
          )
        ],
      ),
    );
  }
}

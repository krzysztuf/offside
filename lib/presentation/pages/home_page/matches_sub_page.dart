import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:offside/core/extensions/theme_context_extension.dart';
import 'package:offside/presentation/widgets/square.dart';

class MatchesSubPage extends ConsumerWidget {
  const MatchesSubPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(32),
            Text(
              DateFormat('d MMMM yyyy', 'pl').format(DateTime(2023, 6, 6)),
              style: context.textTheme.titleLarge,
            ),
            const Gap(8),
            Card(
              child: SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Text('Polska', style: context.textTheme.titleMedium),
                              const Gap(8),
                              Square(
                                size: 40,
                                child: CircleAvatar(
                                  backgroundColor: Colors.red,
                                  child: Text(
                                    'PL',
                                    style: context.textTheme.bodySmall,
                                  ),
                                ),
                              )
                            ],
                          ),
                          Text('-', style: context.textTheme.headlineSmall),
                          Column(
                            children: [
                              Text('Niemcy', style: context.textTheme.titleMedium),
                              const Gap(8),
                              Square(
                                size: 40,
                                child: CircleAvatar(
                                  backgroundColor: Colors.black87,
                                  child: Text(
                                    'DE',
                                    style: context.textTheme.bodySmall,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      const Gap(24),
                      const Divider(height: 1),
                      const Gap(24),
                      TextButton(
                        child: const Text('WYTYPUJ WYNIK'),
                        onPressed: () {},
                      ),
                      const Gap(8),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

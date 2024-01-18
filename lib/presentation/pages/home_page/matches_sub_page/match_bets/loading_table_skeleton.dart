import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:offside/core/extensions/string_suffix_extensions.dart';
import 'package:offside/core/extensions/theme_context_extension.dart';
import 'package:skeletonizer/skeletonizer.dart';

class LoadingBetsSkeleton extends StatelessWidget {
  const LoadingBetsSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      enabled: true,
      child: Column(
        children: Iterable.generate(12, (index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: ListTile(
              title: Text('Item number $index as title'),
              subtitle: const Text('Subtitle here'),
              leading: const Icon(Icons.add, size: 40),
              trailing: Column(
                children: [
                  '24'.styledText(context.textTheme.titleLarge!),
                  const Gap(4),
                  'punkty'.styledText(context.textTheme.bodySmall!),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

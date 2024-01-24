import 'package:flutter/material.dart';
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
              contentPadding: const EdgeInsets.only(bottom: 0),
              title: Text('Item number $index as title'),
              leading: const Padding(
                padding: EdgeInsets.only(right: 8.0),
                child: Icon(Icons.add, size: 40),
              ),
              trailing: Text('AAAAA', style: context.textTheme.headlineLarge),
            ),
          );
        }).toList(),
      ),
    );
  }
}

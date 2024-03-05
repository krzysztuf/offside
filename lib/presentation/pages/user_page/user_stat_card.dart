import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:offside/core/extensions/theme_context_extension.dart';

class UserStatCard extends StatelessWidget {
  final String title;
  final Widget child;

  const UserStatCard({
    super.key,
    required this.title,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    final labelSmall = context.textTheme.labelSmall!;
    return SizedBox(
      width: 180,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              child,
              const Gap(8),
              Text(
                title,
                style: labelSmall.copyWith(color: labelSmall.color!.withOpacity(0.7)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:offside/core/extensions/string_suffix_extensions.dart';
import 'package:offside/core/extensions/theme_context_extension.dart';

class SubtitledHeadline extends ConsumerWidget {
  final String title;
  final String subtitle;

  const SubtitledHeadline({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var bodyMedium = context.textTheme.bodyMedium;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: title.styledText(context.textTheme.headlineSmall),
        ),
        const Gap(2),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: subtitle.styledText(
            bodyMedium!.copyWith(color: bodyMedium.color!.withOpacity(0.5)),
          ),
        ),
      ],
    );
  }
}

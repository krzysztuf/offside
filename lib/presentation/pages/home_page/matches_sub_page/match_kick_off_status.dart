import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:offside/core/extensions/theme_context_extension.dart';
import 'package:offside/domain/entities/match.dart';
import 'package:offside/presentation/providers/date_time_provider.dart';
import 'package:offside/presentation/widgets/muted_information_label.dart';

class MatchKickOffStatus extends ConsumerWidget {
  final Match match;

  const MatchKickOffStatus({
    super.key,
    required this.match,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final now = ref.read(dateTimeProvider);

    if (!match.afterKickOff(now)) {
      return MutedInformationLabel(
        icon: Icons.sports,
        text: DateFormat('HH:mm').format(match.kickOffDate),
      );
    }

    if (match.beingPlayed(now)) {
      final foreground = context.widgetThemes.matchKickOffStatus.beingPlayed.foreground;
      return Row(
        children: [
          LoadingAnimationWidget.waveDots(
            color: foreground,
            size: 16,
          ),
          const Gap(8),
          Text(
            'TRWA',
            style: context.textTheme.bodySmall!.copyWith(color: foreground),
          ),
        ],
      );
    }

    return const MutedInformationLabel(
      icon: Icons.sports,
      text: 'ZAKOŃCZONY',
    );
  }
}

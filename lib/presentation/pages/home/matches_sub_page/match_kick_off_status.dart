import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:offside/domain/entities/match.dart';
import 'package:offside/presentation/providers/date_time_provider.dart';
import 'package:offside/presentation/widgets/muted_information_label.dart';
import 'package:offside/presentation/widgets/offside/being_played_indicator.dart';

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
      return const BeingPlayedIndicator();
    }

    return const MutedInformationLabel(
      icon: Icons.event_available,
      text: 'ZAKOŃCZONY',
    );
  }
}

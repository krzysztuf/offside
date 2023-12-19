import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:offside/core/extensions/theme_context_extension.dart';
import 'package:offside/domain/entities/match.dart';
import 'package:offside/presentation/pages/home_page/matches_sub_page/team_badge.dart';
import 'package:offside/presentation/widgets/muted_information_label.dart';

class MatchBetCard extends ConsumerWidget {
  final Match match;

  const MatchBetCard(this.match, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const MutedInformationLabel(
                    icon: Icons.emoji_events_outlined,
                    text: 'GRUPA A',
                  ),
                  MutedInformationLabel(
                    icon: Icons.sports,
                    // text: DateFormat('HH:mm').format(DateTime.now()),
                    text: DateFormat('17:00').format(DateTime.now()),
                  ),
                ],
              ),
              const Gap(32),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TeamBadge(team: match.homeTeam),
                  Text('-', style: context.textTheme.titleMedium),
                  TeamBadge(team: match.awayTeam),
                ],
              ),
              const Gap(16),
              const Divider(height: 1),
              const Gap(16),
              TextButton(
                child: const Text('TYPUJ'),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

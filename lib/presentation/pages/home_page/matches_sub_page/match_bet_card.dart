import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:offside/core/extensions/theme_context_extension.dart';
import 'package:offside/domain/models/team.dart';
import 'package:offside/presentation/pages/home_page/matches_sub_page/team_badge.dart';
import 'package:offside/presentation/widgets/muted_information_label.dart';

class MatchBetCard extends ConsumerWidget {
  MatchBetCard({super.key});

  final homeTeam = Team(
    id: 0,
    name: 'Polska',
    abbreviation: 'POL',
    kickOffDate: DateTime.now(),
  );

  final awayTeam = Team(
    id: 0,
    name: 'Niemcy',
    abbreviation: 'GER',
    kickOffDate: DateTime.now(),
  );

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
                  TeamBadge(team: homeTeam),
                  Text('-', style: context.textTheme.titleMedium),
                  TeamBadge(team: awayTeam),
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
    );
  }
}

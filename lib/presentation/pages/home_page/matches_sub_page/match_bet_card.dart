import 'package:bottom_sheet/bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:offside/core/extensions/theme_context_extension.dart';
import 'package:offside/presentation/pages/home_page/matches_sub_page/match_bet_card_view_model.dart';
import 'package:offside/presentation/pages/home_page/matches_sub_page/score_input.dart';
import 'package:offside/presentation/pages/home_page/matches_sub_page/team_badge.dart';
import 'package:offside/presentation/pages/home_page/table_sub_page/loading_table_skeleton.dart';
import 'package:offside/presentation/widgets/muted_information_label.dart';
import 'package:supercharged/supercharged.dart';

class MatchBetCard extends ConsumerWidget {
  const MatchBetCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(matchBetCardViewModelProvider);
    final match = state.bet.match;

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
                    text: DateFormat('17:00').format(DateTime.now()),
                  ),
                ],
              ),
              const Gap(32),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TeamBadge(team: match.homeTeam),
                  const ScoreInput(),
                  Text('-', style: context.textTheme.titleMedium),
                  const ScoreInput(),
                  TeamBadge(team: match.awayTeam),
                ],
              ),
              const Gap(32),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton.icon(
                    icon: const Icon(Icons.group, size: 16),
                    label: const Text('Typy innych'),
                    onPressed: () {
                      showFlexibleBottomSheet(
                        context: context,
                        duration: 400.milliseconds,
                        isSafeArea: true,
                        initHeight: 0.6,
                        maxHeight: 0.9,
                        anchors: [0, 0.6, 0.9],
                        bottomSheetBorderRadius: const BorderRadius.vertical(top: Radius.circular(32)),
                        builder: (context, scrollController, bottomSheetOffset) {
                          return SingleChildScrollView(
                            controller: scrollController,
                            child: const LoadingTableSkeleton(),
                          );
                        },
                      );
                    },
                  ),
                  TextButton.icon(
                    icon: const Icon(Icons.save, size: 16),
                    label: const Text('Zapisz'),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

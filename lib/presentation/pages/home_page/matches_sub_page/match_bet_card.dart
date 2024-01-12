import 'dart:developer';

import 'package:bottom_sheet/bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:offside/core/extensions/theme_context_extension.dart';
import 'package:offside/domain/entities/match_goals.dart';
import 'package:offside/domain/entities/team.dart';
import 'package:offside/presentation/pages/home_page/matches_sub_page/match_bet_card_state.dart';
import 'package:offside/presentation/pages/home_page/matches_sub_page/match_bet_card_view_model.dart';
import 'package:offside/presentation/pages/home_page/matches_sub_page/score_input.dart';
import 'package:offside/presentation/pages/home_page/matches_sub_page/team_badge.dart';
import 'package:offside/presentation/pages/home_page/table_sub_page/loading_table_skeleton.dart';
import 'package:offside/presentation/widgets/alternative_inflater.dart';
import 'package:offside/presentation/widgets/fetchable_builder.dart';
import 'package:offside/presentation/widgets/muted_information_label.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:supercharged/supercharged.dart';

class MatchBetCard extends ConsumerStatefulWidget {
  const MatchBetCard({super.key});

  @override
  ConsumerState<MatchBetCard> createState() => _MatchBetCardState();
}

class _MatchBetCardState extends ConsumerState<MatchBetCard> {
  int homeGoalsPrediction = 0;
  int awayGoalsPrediction = 0;

  @override
  void initState() {
    super.initState();
    // final currentGoalsPrediction = ref.read(matchBetCardViewModelProvider).bet.prediction;
    // homeGoalsPrediction = currentGoalsPrediction.home;
    // awayGoalsPrediction = currentGoalsPrediction.away;
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(matchBetCardViewModelProvider);
    log('--- state: ${state.betState}');
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
                    text: DateFormat('hh:mm').format(state.match.kickOffDate),
                  ),
                ],
              ),
              const Gap(32),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 80,
                    child: FetchableBuilder(
                      fetchable: state.match.homeTeam,
                      waiting: () => createTeamBadgeSkeletonizer(),
                      child: (homeTeam) => TeamBadge(team: homeTeam),
                    ),
                  ),
                  SizedBox(
                    width: 200,
                    child: AlternativeInflater(
                      useAlternative: state.betState == BetState.loading,
                      builder: (_) => Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ScoreInput(
                            onUpdated: (score) => setState(() => homeGoalsPrediction = score),
                          ),
                          Text('-', style: context.textTheme.titleLarge),
                          ScoreInput(
                            onUpdated: (score) => setState(() => awayGoalsPrediction = score),
                          ),
                        ],
                      ),
                      alternativeBuilder: (_) => const Center(
                        child: CircularProgressIndicator(),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 80,
                    child: FetchableBuilder(
                      fetchable: state.match.awayTeam,
                      waiting: () => createTeamBadgeSkeletonizer(),
                      child: (awayTeam) => TeamBadge(team: awayTeam),
                    ),
                  ),
                ],
              ),
              const Gap(32),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     TextButton.icon(
              //       icon: const Icon(Icons.group, size: 16),
              //       label: const Text('Typy innych'),
              //       onPressed: () => showOtherUsersPredictionsSheet(context),
              //     ),
              //     Enabled(
              //       when: goalsPredictionHasChanged(state.bet.prediction),
              //       child: TextButton.icon(
              //         icon: const Icon(Icons.save, size: 16),
              //         label: const Text('Zapisz'),
              //         onPressed: () => savePrediction(state),
              //       ),
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }

  Skeletonizer createTeamBadgeSkeletonizer() {
    return Skeletonizer(child: TeamBadge(team: Team(name: 'Dummy', abbreviation: 'ASB')));
  }

  void savePrediction(MatchBetCardState state) {
    final goalsPrediction = state.bet!.prediction.copyWith(
      home: homeGoalsPrediction,
      away: awayGoalsPrediction,
    );

    ref.read(matchBetCardViewModelProvider.notifier).updateBet(state.bet!.copyWith(prediction: goalsPrediction));
  }

  void showOtherUsersPredictionsSheet(BuildContext context) {
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
  }

  bool goalsPredictionHasChanged(MatchGoals savedGoalsPrediction) {
    return homeGoalsPrediction != savedGoalsPrediction.home || awayGoalsPrediction != savedGoalsPrediction.away;
  }
}

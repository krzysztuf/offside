import 'package:bottom_sheet/bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:loading_animations/loading_animations.dart';
import 'package:offside/domain/entities/goals.dart';
import 'package:offside/domain/entities/team.dart';
import 'package:offside/presentation/pages/home_page/matches_sub_page/goals_prediction.dart';
import 'package:offside/presentation/pages/home_page/matches_sub_page/goals_prediction_editor.dart';
import 'package:offside/presentation/pages/home_page/matches_sub_page/match_bet_card_state.dart';
import 'package:offside/presentation/pages/home_page/matches_sub_page/match_bet_card_view_model.dart';
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
  var editingPrediction = false;
  var editedPrediction = const Goals(home: 0, away: 0);

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(matchBetCardViewModelProvider);
    ref.listen(matchBetCardViewModelProvider, (_, vm) {
      if (vm.betState == BetState.placed) {
        assert(vm.bet != null, 'null bet when state is betPlaced');
        editedPrediction = vm.bet!.prediction.copyWith();
      }
    });

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
                    width: 180,
                    child: AlternativeInflater(
                      scaleFactor: 0.9,
                      useAlternative: state.betState == BetState.loading,
                      // useAlternative: true,
                      builder: () => AlternativeInflater(
                        useAlternative: state.betState == BetState.notPlaced || editingPrediction,
                        scaleFactor: 0.7,
                        builder: () {
                          final prediction = state.bet?.prediction;
                          return GoalsPrediction(home: prediction?.home ?? 0, away: prediction?.away ?? 0);
                        },
                        alternativeBuilder: () => GoalsPredictionEditor(
                          onUpdated: (prediction) => editedPrediction = prediction,
                        ),
                      ),
                      alternativeBuilder: () => Center(
                        child: LoadingBouncingGrid.square(size: 32),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Visibility(
                    visible: false,
                    child: TextButton.icon(
                      icon: const Icon(Icons.group, size: 16),
                      label: const Text('Typy innych'),
                      onPressed: () => showOtherUsersPredictionsSheet(context),
                    ),
                  ),
                  Stack(
                    children: [
                      Visibility(
                        visible: editingPrediction || state.betState == BetState.notPlaced,
                        child: TextButton.icon(
                            icon: const Icon(Icons.save, size: 16),
                            label: const Text('Zapisz'),
                            onPressed: () {
                              setState(() => editingPrediction = false);
                              ref.read(matchBetCardViewModelProvider.notifier).updatePrediction(editedPrediction);
                            }),
                      ),
                      Visibility(
                        visible: !editingPrediction && state.betState == BetState.placed,
                        child: TextButton.icon(
                            icon: const Icon(Icons.edit, size: 16),
                            label: const Text('Edytuj'),
                            onPressed: () => setState(() => editingPrediction = true)),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Skeletonizer createTeamBadgeSkeletonizer() {
    return Skeletonizer(child: TeamBadge(team: Team(name: 'Dummy', abbreviation: 'ASB')));
  }

  // void savePrediction(MatchBetCardState state) {
  //   final goalsPrediction = state.bet!.prediction.copyWith(
  //     home: homeGoalsPrediction,
  //     away: awayGoalsPrediction,
  //   );
  //
  //   ref.read(matchBetCardViewModelProvider.notifier).updateBet(state.bet!.copyWith(prediction: goalsPrediction));
  // }

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
}

import 'package:bottom_sheet/bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:offside/core/extensions/list_with_gaps.dart';
import 'package:offside/core/extensions/theme_context_extension.dart';
import 'package:offside/domain/entities/goals.dart';
import 'package:offside/domain/entities/match.dart';
import 'package:offside/domain/entities/team.dart';
import 'package:offside/domain/usecases/settings/reactive_settings_providers.dart';
import 'package:offside/presentation/pages/home_page/matches_sub_page/expired_bet_goals.dart';
import 'package:offside/presentation/pages/home_page/matches_sub_page/goals_prediction_editor.dart';
import 'package:offside/presentation/pages/home_page/matches_sub_page/match_bet_card_controller.dart';
import 'package:offside/presentation/pages/home_page/matches_sub_page/match_bet_card_state.dart';
import 'package:offside/presentation/pages/home_page/matches_sub_page/match_bets/match_bets.dart';
import 'package:offside/presentation/pages/home_page/matches_sub_page/match_bets/match_bets_controller.dart';
import 'package:offside/presentation/pages/home_page/matches_sub_page/match_kick_off_status.dart';
import 'package:offside/presentation/providers/date_time_provider.dart';
import 'package:offside/presentation/widgets/alternative_inflater.dart';
import 'package:offside/presentation/widgets/enabled.dart';
import 'package:offside/presentation/widgets/fetchable_builder.dart';
import 'package:offside/presentation/widgets/icon_with_text.dart';
import 'package:offside/presentation/widgets/inflater.dart';
import 'package:offside/presentation/widgets/muted_information_label.dart';
import 'package:offside/presentation/widgets/offside/team_badge.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:supercharged/supercharged.dart';

import 'bet_status_pill.dart';

class MatchBetCard extends ConsumerStatefulWidget {
  const MatchBetCard({super.key});

  @override
  ConsumerState<MatchBetCard> createState() => _MatchBetCardState();
}

enum AdminAction {
  remove,
  setScore,
}

class _MatchBetCardState extends ConsumerState<MatchBetCard> {
  var editingPrediction = false;
  Goals? editedPrediction;

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(matchBetCardControllerProvider);
    final isAdmin = ref.watch(currentUserIdSettingProvider) == '8YJAzYxecm0OgOWKMW3u';
    return Card(
      elevation: 3,
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              buildHeader(state, isAdmin),
              buildGoalsPredictionRow(state),
              buildFooter(state, context),
            ].withGaps(48),
          ),
        ),
      ),
    );
  }

  SizedBox buildFooter(MatchBetCardState state, BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BetStatusPill(betState: state.betState),
          Inflater(
            inflated: state.loading,
            child: LoadingAnimationWidget.fourRotatingDots(
              color: context.colorScheme.primary,
              size: 32,
            ),
          ),
          Enabled(
            enabled: !state.loading,
            child: Row(
              children: [
                Visibility(
                  visible: state.match.afterKickOff(ref.read(dateTimeProvider)),
                  child: FilledButton.tonalIcon(
                    icon: const Icon(Icons.group, size: 18),
                    label: const Text('Typy innych'),
                    onPressed: () => showOtherUsersPredictionsSheet(context, state.match),
                  ),
                ),
                Visibility(
                  visible: editingPrediction && editedPrediction == state.bet!.prediction,
                  child: FilledButton.tonalIcon(
                      icon: const Icon(Icons.cancel, size: 18),
                      label: const Text('Anuluj'),
                      onPressed: () => setState(() => editingPrediction = false)),
                ),
                Visibility(
                  visible: editingPrediction && editedPrediction != state.bet!.prediction ||
                      state.betState == BetState.notPlaced,
                  child: FilledButton.tonalIcon(
                      icon: const Icon(Icons.sports_soccer_rounded, size: 18),
                      label: const Text('Typuj'),
                      onPressed: () async {
                        editedPrediction ??= const Goals();
                        await ref.read(matchBetCardControllerProvider.notifier).updatePrediction(editedPrediction!);
                        setState(() => editingPrediction = false);
                      }),
                ),
                Visibility(
                  visible: !editingPrediction && state.betState == BetState.placed,
                  child: FilledButton.tonalIcon(
                    icon: const Icon(Icons.edit, size: 18),
                    label: const Text('Zmień'),
                    onPressed: () {
                      setState(() {
                        editedPrediction = state.bet!.prediction.copyWith();
                        editingPrediction = true;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Row buildGoalsPredictionRow(MatchBetCardState state) {
    return Row(
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
          width: 160,
          child: AlternativeInflater(
            scaleFactor: 0.9,
            useAlternative: state.betState == BetState.loading,
            builder: () {
              if (state.betState == BetState.expired) {
                return const ExpiredBetGoals();
              }

              return GoalsPredictionEditor(
                initialPrediction: editedPrediction ?? state.bet?.prediction ?? const Goals(),
                editable: state.betState == BetState.notPlaced || editingPrediction,
                onUpdated: (prediction) => setState(() => editedPrediction = prediction),
              );
            },
            alternativeBuilder: () => Center(
              child: LoadingAnimationWidget.fourRotatingDots(
                size: 32,
                color: context.colorScheme.primary,
              ),
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
    );
  }

  Row buildHeader(MatchBetCardState state, bool isAdmin) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const MutedInformationLabel(
          icon: Icons.emoji_events_outlined,
          text: 'GRUPA A',
        ),
        Visibility(
          visible: isAdmin,
          child: PopupMenuButton<AdminAction>(
            icon: const Icon(Icons.sports_score),
            offset: const Offset(64, 0),
            itemBuilder: (context) => [
              const PopupMenuItem(
                value: AdminAction.setScore,
                child: IconWithText(icon: Icons.edit_note, text: 'Ustaw wynik'),
              ),
              PopupMenuItem(
                value: AdminAction.remove,
                onTap: () async => await maybeRemoveMatch(context),
                child: const IconWithText(icon: Icons.delete, text: 'Usuń'),
              ),
            ],
            onSelected: (action) {},
          ),
        ),
        MatchKickOffStatus(match: state.match),
      ],
    );
  }

  Skeletonizer createTeamBadgeSkeletonizer() {
    return Skeletonizer(
      child: TeamBadge(
        team: Team(
          name: 'Dummy',
          abbreviation: 'ASB',
          logo: 'assets/images/teams/england.png',
        ),
      ),
    );
  }

  void showOtherUsersPredictionsSheet(BuildContext context, Match match) {
    showFlexibleBottomSheet(
      context: context,
      duration: 400.milliseconds,
      isSafeArea: true,
      initHeight: 0.8,
      anchors: [0.0, 0.8, 1.0],
      bottomSheetBorderRadius: const BorderRadius.vertical(top: Radius.circular(32)),
      builder: (context, scrollController, bottomSheetOffset) {
        return SingleChildScrollView(
          controller: scrollController,
          child: ProviderScope(
            overrides: [
              matchBetsControllerProvider.overrideWith(() => MatchBetsController()),
              matchOfBetsToShowProvider.overrideWith((_) => match),
            ],
            child: const MatchBets(),
          ),
        );
      },
    );
  }

  Future<void> maybeRemoveMatch(BuildContext context) async {
    await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(title: const Text('Usunąć mecz?'), actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Anuluj'),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Usuń'),
            )
          ]);
        });
  }
}

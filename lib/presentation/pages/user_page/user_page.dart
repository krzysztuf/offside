import 'dart:developer';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:offside/core/extensions/string_suffix_extensions.dart';
import 'package:offside/core/extensions/theme_context_extension.dart';
import 'package:offside/domain/entities/bet.dart';
import 'package:offside/domain/entities/match.dart';
import 'package:offside/domain/entities/user.dart';
import 'package:offside/presentation/pages/home_page/matches_sub_page/team_badge.dart';
import 'package:offside/presentation/pages/user_page/user_page_state.dart';
import 'package:offside/presentation/widgets/fetchable_builder.dart';
import 'package:offside/presentation/widgets/inflater.dart';

import 'user_page_controller.dart';
import 'user_stat_card.dart';

class UserPage extends ConsumerWidget {
  const UserPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: ref.read(userOfUserPageProvider).fullName.text,
      ),
      body: switch (ref.watch(userPageControllerProvider)) {
        AsyncData(value: final state) => _buildUserPage(state, context),
        AsyncError() => const Center(child: Text('Error')),
        _ => Center(child: LoadingAnimationWidget.fourRotatingDots(color: context.colorScheme.primary, size: 48)),
      },
    );
  }

  Widget _buildUserPage(UserPageState state, BuildContext context) {
    return Inflater(
      inflated: true,
      scaleFactor: 0.9,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Gap(48),
            Center(
              child: SizedBox.square(
                dimension: 128,
                child: state.user.avatar(context, elevation: 8),
              ),
            ),
            const Gap(48),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    UserStatCard(
                      title: 'PUNKTY',
                      child: buildStandardStat(24, context),
                    ),
                    UserStatCard(
                      title: 'FORMA',
                      child: buildStandardStat('*****', context),
                    ),
                  ],
                ),
                const Gap(32),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    UserStatCard(
                      title: 'TYPY ZA 3 PKT',
                      child: buildStandardStat(4, context),
                    ),
                    UserStatCard(
                      title: 'TYPY ZA 1 PKT',
                      child: buildStandardStat(6, context),
                    ),
                  ],
                )
              ],
            ),
            buildBetsTable(state, context),
          ],
        ),
      ),
    );
  }

  Text buildStandardStat(dynamic text, BuildContext context) {
    return Text('$text', style: context.textTheme.titleLarge!.copyWith(fontSize: 36));
  }

  Widget buildBetsTable(UserPageState state, BuildContext context) {
    // return Container();
    return Card(
      margin: const EdgeInsets.all(32),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            for (final match in state.matches)
              ListTile(
                title: Row(
                  children: [
                    SizedBox(
                      width: 72,
                      child: Row(
                        children: [
                          Expanded(child: Container()),
                          FetchableBuilder(
                            fetchable: match.homeTeam,
                            waiting: () => LoadingAnimationWidget.waveDots(
                              color: context.colorScheme.primary,
                              size: 24,
                            ),
                            child: (homeTeam) => TeamBadge(
                              team: homeTeam,
                              badgeRadius: 10,
                              direction: Axis.horizontal,
                              useAbbreviation: true,
                              mirrored: true,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 80,
                      child: Center(child: buildScorePrediction(match, state.bets, context)),
                    ),
                    FetchableBuilder(
                      fetchable: match.awayTeam,
                      waiting: () => LoadingAnimationWidget.waveDots(
                        color: context.colorScheme.primary,
                        size: 24,
                      ),
                      child: (homeTeam) => TeamBadge(
                        team: homeTeam,
                        badgeRadius: 10,
                        direction: Axis.horizontal,
                        useAbbreviation: true,
                      ),
                    ),
                  ],
                ),
              )
          ],
        ),
      ),
    );
  }

  Widget buildScorePrediction(Match match, List<Bet> bets, BuildContext context) {
    final bet = bets.firstWhereOrNull((bet) {
      log('bet: ${bet.matchId}, match: ${match.id}, ${bet.matchId == match.id}');
      return bet.matchId == match.id;
    });

    log('building for match: ${match.id}, bets: ${bets}, found: ${bet != null}');

    final scoreString = bet != null ? '${bet.prediction.home} : ${bet.prediction.away}' : '- : -';
    return Opacity(
      opacity: bet != null ? 1 : 0.5,
      child: Text(
        scoreString,
        style: context.textTheme.titleLarge,
      ),
    );
  }
}

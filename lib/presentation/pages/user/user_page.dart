import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:offside/core/extensions/string_suffix_extensions.dart';
import 'package:offside/core/extensions/theme_context_extension.dart';
import 'package:offside/domain/entities/user.dart';
import 'package:offside/presentation/pages/user/user_bets_table.dart';
import 'package:offside/presentation/pages/user/user_page_state.dart';
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
    final statStyle = context.widgetThemes.userBets.userStatValue;
    return Inflater(
      scaleFactor: 0.9,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Gap(48),
            Center(
              child: SizedBox.square(
                dimension: 192,
                child: state.user.avatar(context, elevation: 6),
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
                      child: buildStandardStat(24, statStyle),
                    ),
                    UserStatCard(
                      title: 'FORMA',
                      child: buildStandardStat('*****', statStyle),
                    ),
                  ],
                ),
                const Gap(32),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    UserStatCard(
                      title: 'TYPY ZA 3 PKT',
                      child: buildStandardStat(4, statStyle),
                    ),
                    UserStatCard(
                      title: 'TYPY ZA 1 PKT',
                      child: buildStandardStat(6, statStyle),
                    ),
                  ],
                )
              ],
            ),
            UserBetsTable(matches: state.matches, userBets: state.bets),
          ],
        ),
      ),
    );
  }

  Text buildStandardStat(dynamic text, TextStyle style) {
    return Text('$text', style: style);
  }
}

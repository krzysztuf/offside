import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:offside/core/extensions/string_suffix_extensions.dart';
import 'package:offside/core/extensions/theme_context_extension.dart';
import 'package:offside/domain/entities/user.dart';
import 'package:offside/presentation/pages/user_page/user_stat_card.dart';

import 'user_page_controller.dart';

class UserPage extends ConsumerWidget {
  const UserPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    log('building user page');
    final state = ref.watch(userPageControllerProvider);
    return Scaffold(
      appBar: AppBar(
        title: state.user.fullName.text,
      ),
      body: SingleChildScrollView(
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
          ],
        ),
      ),
    );
  }

  Text buildStandardStat(dynamic text, BuildContext context) {
    return Text('$text', style: context.textTheme.titleLarge!.copyWith(fontSize: 36));
  }
}

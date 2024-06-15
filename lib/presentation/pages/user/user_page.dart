import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:offside/core/extensions/string_suffix_extensions.dart';
import 'package:offside/core/extensions/theme_context_extension.dart';
import 'package:offside/data/repositories/providers.dart';
import 'package:offside/domain/entities/user.dart';
import 'package:offside/presentation/pages/user/user_bets_table.dart';
import 'package:offside/presentation/pages/user/user_page_state.dart';
import 'package:offside/presentation/widgets/inflater.dart';

import 'user_page_controller.dart';
import 'user_stats.dart';

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
        AsyncData(value: final state) => _buildUserPage(state, ref, context),
        AsyncError() => const Center(child: Text('Error')),
        _ => Center(
            child: LoadingAnimationWidget.fourRotatingDots(
              color: context.colorScheme.primary,
              size: 48,
            ),
          ),
      },
    );
  }

  Widget _buildUserPage(UserPageState state, WidgetRef ref, BuildContext context) {
    return Inflater(
      scaleFactor: 0.95,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const Gap(48),
              GestureDetector(
                child: Center(
                  child: state.user.avatar(context, ref, elevation: 6, radius: 80, fontSize: 48),
                ),
                onTap: () {
                  if (state.user.image != null) {
                    showUserProfilePictureSheet(context, ref, state.user);
                  }
                },
              ),
              const Gap(48),
              'Statystyki'.styledText(context.textTheme.headlineMedium),
              const Gap(16),
              UserStats(state: state),
              const Gap(48),
              'Typy użytkownika'.styledText(context.textTheme.headlineMedium),
              const Gap(16),
              UserBetsTable(matches: state.matches, userBets: state.bets),
              const Gap(16),
            ],
          ),
        ),
      ),
    );
  }

  void showUserProfilePictureSheet(BuildContext context, WidgetRef ref, User user) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return FutureBuilder(
          future: getDownloadableUrl(ref, user),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return LoadingAnimationWidget.fourRotatingDots(
                color: context.colorScheme.primary,
                size: 48,
              );
            }

            final url = snapshot.data;
            return CachedNetworkImage(imageUrl: url!);
          },
        );
      },
    );
  }

  Future<String?> getDownloadableUrl(WidgetRef ref, User user) async {
    if (user.image == null) {
      return null;
    }

    return await ref.read(imageRepositoryProvider).getDownloadUrl(user.image!);
  }
}

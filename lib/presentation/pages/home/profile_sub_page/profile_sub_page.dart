import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:offside/core/extensions/string_suffix_extensions.dart';
import 'package:offside/core/extensions/theme_context_extension.dart';
import 'package:offside/domain/entities/user.dart';
import 'package:offside/domain/usecases/auth/auth_use_case_providers.dart';
import 'package:offside/domain/usecases/settings/reactive_settings_providers.dart';
import 'package:offside/domain/usecases/users/user_use_case_providers.dart';
import 'package:offside/presentation/providers/current_user_provider.dart';
import 'package:offside/presentation/widgets/admin_visible.dart';

import 'user_dropdown.dart';

class ProfileSubPage extends ConsumerStatefulWidget {
  const ProfileSubPage({super.key});

  @override
  ConsumerState createState() => _ProfileSubPageState();
}

class _ProfileSubPageState extends ConsumerState<ProfileSubPage> {
  @override
  Widget build(BuildContext context) {
    return switch (ref.watch(currentUserProvider)) {
      AsyncData(value: final user) => buildProfilePage(user!),
      AsyncError() => const Center(child: Text('Error')),
      _ => LoadingAnimationWidget.fourRotatingDots(
          color: context.colorScheme.primary,
          size: 64,
        ),
    };
  }

  Widget buildProfilePage(User user) {
    return Column(
      children: [
        AdminVisible(
          child: FutureBuilder(
            future: ref.watch(getAllUsersUseCaseProvider).run(),
            builder: (context, snapshot) {
              return switch (snapshot.connectionState) {
                ConnectionState.waiting => LoadingAnimationWidget.fourRotatingDots(
                    color: context.colorScheme.primary,
                    size: 64,
                  ),
                ConnectionState.done => UserDropdown(
                    users: snapshot.data!,
                    onChanged: (user) => ref.read(currentUserIdSettingProvider.notifier).value = user.id,
                  ),
                _ => 'Done'.text,
              };
            },
          ),
        ),
        const Gap(32),
        Center(
          child: user.avatar(
            context,
            elevation: 6,
            radius: 64,
            fontSize: 48,
          ),
        ),
        const Gap(32),
        _buildActionButton(
          context: context,
          icon: Icons.photo,
          text: 'Zmień zdjęcie',
          onPressed: () {},
        ),
        const Gap(48),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            child: Column(
              children: [
                ListTile(
                  title: user.name.text,
                  subtitle: 'Imię'.styledText(context.textTheme.bodySmall!),
                ),
                // const Divider(height: 1),
                ListTile(
                  title: user.surname.text,
                  subtitle: 'Nazwisko'.styledText(context.textTheme.bodySmall!),
                ),
                const Gap(16),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildActionButton(
                        context: context,
                        icon: Icons.edit,
                        text: 'Edytuj',
                        onPressed: () {},
                      ),
                      _buildActionButton(
                        context: context,
                        icon: Icons.logout,
                        text: 'Wyloguj',
                        onPressed: () {
                          ref.read(logOutUseCaseProvider).run().then((_) => context.goNamed('login'));
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildActionButton(
      {required BuildContext context, required IconData icon, required String text, required VoidCallback onPressed}) {
    return FilledButton.tonal(
      onPressed: onPressed,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 16),
          const Gap(8),
          text.text,
        ],
      ),
    );
  }
}

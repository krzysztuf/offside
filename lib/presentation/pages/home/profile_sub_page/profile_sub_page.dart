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
import 'package:offside/presentation/pages/home/profile_sub_page/user_dropdown.dart';

class ProfileSubPage extends ConsumerStatefulWidget {
  const ProfileSubPage({super.key});

  @override
  ConsumerState createState() => _ProfileSubPageState();
}

class _ProfileSubPageState extends ConsumerState<ProfileSubPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FutureBuilder(
        future: ref.watch(getAllUsersUseCaseProvider).run(),
        builder: (context, snapshot) {
          return switch (snapshot.connectionState) {
            ConnectionState.waiting => LoadingAnimationWidget.fourRotatingDots(
                color: context.colorScheme.primary,
                size: 64,
              ),
            ConnectionState.done => buildUserPage(snapshot.data!),
            _ => 'Done'.text,
          };
        },
      ),
    );
  }

  Widget buildUserPage(List<User> users) {
    return Column(
      children: [
        UserDropdown(
          users: users,
          onChanged: (user) => ref.read(currentUserIdSettingProvider.notifier).value = user.id,
        ),
        const Gap(16),
        ElevatedButton(
          onPressed: () async {
            ref.read(logOutUseCaseProvider).run().then((_) {
              context.goNamed('login');
            });
          },
          child: const Text('Wyloguj'),
        ),
      ],
    );
  }
}

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:offside/core/extensions/string_suffix_extensions.dart';
import 'package:offside/core/extensions/theme_context_extension.dart';
import 'package:offside/domain/usecases/settings/reactive_settings_providers.dart';
import 'package:offside/domain/usecases/users/user_use_cases.dart';
import 'package:offside/presentation/pages/home_page/profile_sub_page/user_dropdown.dart';

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
        future: ref.watch(allUsersUseCaseProvider).run(),
        builder: (context, snapshot) {
          return switch (snapshot.connectionState) {
            ConnectionState.waiting => LoadingAnimationWidget.fourRotatingDots(
                // color: context.textTheme.bodyMedium!.color!,
                color: context.colorScheme.primary,
                size: 64,
              ),
            ConnectionState.done => UserDropdown(
                users: snapshot.data!,
                onChanged: (user) {
                  log('user: ${user.id}');
                  ref.read(currentUserIdSettingProvider.notifier).value = user.id;
                },
              ),
            _ => 'Done'.text,
          };
        },
      ),
    );
  }
}

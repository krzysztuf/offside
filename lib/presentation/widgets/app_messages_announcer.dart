import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:offside/core/extensions/app_message_to_snack_bar.dart';
import 'package:offside/core/extensions/scheduled_snack_bar.dart';
import 'package:offside/presentation/providers/app_messages_provider.dart';

class AppMessagesAnnouncer extends ConsumerWidget {
  const AppMessagesAnnouncer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Builder(
      builder: (_) {
        final messages = ref.watch(appMessagesProvider).where((em) => !em.alreadyShown);
        if (messages.isNotEmpty) {
          final messageToShow = messages.last..alreadyShown = true;
          ScaffoldMessenger.of(context).scheduleSnackBar(
            snackBar: messageToShow.toSnackBar(Theme.of(context).colorScheme),
          );
        }

        return Container();
      },
    );
  }
}

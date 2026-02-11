import 'dart:async';
import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:offside/presentation/providers/app_messages_provider.dart';
import 'package:supercharged/supercharged.dart';

extension FutureExtensions<T> on Future<T> {
  Future<T> defaultTimeout({FutureOr<T> Function()? onTimeout}) {
    return timeout(4.seconds, onTimeout: onTimeout);
  }

  Future<T?> expect(WidgetRef ref, [String? message]) async {
    try {
      return await this;
    } catch (e) {
      log('expect caught exception ($message) ${e.toString()}');
      ref.read(appMessagesProvider.notifier).error(message ?? e.toString());
      return null;
    }
  }

  Future<bool> expectSuccess(WidgetRef ref, [String? message]) async {
    try {
      await this;
      return true;
    } catch (e) {
      log('expectSuccess caught exception ($message) ${e.toString()}');
      ref.read(appMessagesProvider.notifier).error(message ?? e.toString());
      return false;
    }
  }
}

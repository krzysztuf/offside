import 'package:offside/core/utils/app_message.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_messages_provider.g.dart';

@riverpod
class AppMessages extends _$AppMessages {
  @override
  List<AppMessage> build() {
    return [];
  }

  void error(String message) {
    updateStateWith(AppMessage(message, MessageType.error));
  }

  void info(String message) {
    updateStateWith(AppMessage(message, MessageType.info));
  }

  void warning(String message) {
    updateStateWith(AppMessage(message, MessageType.warning));
  }

  void updateStateWith(AppMessage message) {
    state = [...state, message];
  }
}

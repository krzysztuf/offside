enum MessageType {
  info,
  error,
  warning,
}

class AppMessage {
  final String message;
  final MessageType type;
  bool alreadyShown = false;

  AppMessage(this.message, this.type);
}

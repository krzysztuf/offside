import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MouseWheelListener extends StatefulWidget {
  final List<LogicalKeyboardKey>? modifiers;
  final Function() onWheelUp;
  final Function() onWheelDown;
  final Widget? child;

  const MouseWheelListener({
    super.key,
    this.modifiers,
    required this.onWheelUp,
    required this.onWheelDown,
    this.child,
  });

  @override
  State<MouseWheelListener> createState() => _MouseWheelListenerState();
}

class _MouseWheelListenerState extends State<MouseWheelListener> {
  bool consumeMouseEvent = false;
  Map<LogicalKeyboardKey, bool>? modifiersPressed = {};

  bool get allModifiersPressed {
    // log('modifiers: ${modifiersPressed!}');
    return modifiersPressed?.values.every((pressed) => pressed) ?? false;
  }

  @override
  void initState() {
    super.initState();
    if (widget.modifiers != null) {
      modifiersPressed = {for (var m in widget.modifiers!) m: false};

      RawKeyboard.instance.addListener(_checkIfModifiersArePressed);
    }
  }

  @override
  void dispose() {
    if (modifiersPressed != null) {
      RawKeyboard.instance.removeListener(_checkIfModifiersArePressed);
    }

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerSignal: (signal) {
        if (signal is PointerScrollEvent && allModifiersPressed) {
          signal.scrollDelta.dy > 0 ? widget.onWheelDown() : widget.onWheelUp();
        }
      },
      child: AbsorbPointer(
        absorbing: consumeMouseEvent,
        child: widget.child,
      ),
    );
  }

  void _checkIfModifiersArePressed(RawKeyEvent event) {
    if (event is RawKeyDownEvent && modifierRegistered(event.logicalKey)) {
      modifiersPressed![event.logicalKey] = true;
    } else if (event is RawKeyUpEvent && modifierRegistered(event.logicalKey)) {
      modifiersPressed![event.logicalKey] = false;
    }

    setState(() => consumeMouseEvent = allModifiersPressed);
  }

  bool modifierRegistered(LogicalKeyboardKey key) {
    return modifiersPressed?.containsKey(key) ?? false;
  }
}

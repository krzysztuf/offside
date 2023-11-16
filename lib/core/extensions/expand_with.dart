import 'package:flutter/material.dart';

extension ExpandWith on Iterable<Widget> {
  Iterable<Widget> expandWith(Widget expander) {
    return expand((widget) => [widget, expander]).toList()..removeLast();
  }
}

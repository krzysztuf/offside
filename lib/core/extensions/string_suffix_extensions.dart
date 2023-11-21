import 'package:flutter/material.dart';

extension StringToTextWidgetExtension on String {
  Text get text => Text(this);

  Text styledText(TextStyle style) => Text(this, style: style);

  String or(String alternative) {
    return isEmpty ? alternative : this;
  }

  String? get orNull => isNotEmpty ? this : null;
}

extension NumberToTextWidgetExtension on num {
  Text get text => Text('$this');
}

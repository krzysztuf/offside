import 'package:flutter/material.dart';

extension ColorSchemeExtensions on ColorScheme {
  Color get lightShadow => shadow.withOpacity(0.3);
}

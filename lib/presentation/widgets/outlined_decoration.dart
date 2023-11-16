import 'package:flutter/material.dart';

class OutlinedDecoration extends InputDecoration {
  const OutlinedDecoration({super.labelText})
      : super(contentPadding: const EdgeInsets.symmetric(horizontal: 16), border: const OutlineInputBorder());
}

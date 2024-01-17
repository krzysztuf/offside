import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:offside/core/extensions/expand_with.dart';

extension ListWithGaps on Iterable<Widget> {
  List<Widget> withGaps(double size) {
    return expandWith(Gap(size)).toList();
  }
}

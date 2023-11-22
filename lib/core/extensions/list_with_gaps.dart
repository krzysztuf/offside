import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:offside/core/extensions/expand_with.dart';

extension ListWithGaps on Iterable<Widget> {
  Iterable<Widget> withGaps({required double gapSize}) {
    return expandWith(Gap(gapSize));
  }
}

import 'package:flutter/material.dart';
import 'package:offside/core/extensions/expand_with.dart';
import 'package:offside/presentation/widgets/gap.dart';

extension ListWithGaps on Iterable<Widget> {
  Iterable<Widget> withGaps({required double gapSize}) {
    return expandWith(Gap(size: gapSize));
  }
}

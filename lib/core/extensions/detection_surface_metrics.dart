import 'dart:math';

import 'package:inspection_sidecar/domain/models/detection.dart';

extension DetectionSurfaceMetrics on Detection {
  Rectangle<double> calculateSurface(double containerWidth, double lengthToPixelRatio) {
    final minRatio = clockPositionMin / 12;
    final maxRatio = clockPositionMax / 12;

    final x = minRatio * containerWidth; // Subtract half the width of the item to center it
    final y = pathPositionMin * lengthToPixelRatio;

    final width = (maxRatio - minRatio) * containerWidth;
    final height = (pathPositionMax - pathPositionMin) * lengthToPixelRatio;

    return Rectangle<double>(x, y, width, height);
  }
}

import 'package:inspection_sidecar/domain/models/detection.dart';

extension DetectionExtensions on Detection {
  String get clockPositionMinHour => _toHour(clockPositionMin);

  String get clockPositionMaxHour => _toHour(clockPositionMax);

  String get combinedInspectionCode => '$inspectionCode $c1$c2';

  String _toHour(double time) {
    int hour = time.floor();
    int minute = ((time - hour) * 60).round();
    return '${hour.toString().padLeft(2, '0')}:${minute.toString().padLeft(2, '0')}';
  }
}

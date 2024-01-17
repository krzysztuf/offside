import 'package:intl/intl.dart';

extension FormattedString on DateTime {
  String toFormattedString() {
    return DateFormat('dd-MM-yyyy hh:mm:ss').format(this);
  }

  DateTime get date => DateTime(year, month, day);
}

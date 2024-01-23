import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'date_time_provider.g.dart';

@riverpod
DateTime dateTime(DateTimeRef ref) {
  return DateTime.now();
}

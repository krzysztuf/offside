import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'date_time_provider.g.dart';

@riverpod
DateTime dateTime(Ref ref) {
  return DateTime.now();
}

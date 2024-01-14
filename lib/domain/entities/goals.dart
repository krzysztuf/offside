import 'package:freezed_annotation/freezed_annotation.dart';

part 'goals.freezed.dart';
part 'goals.g.dart';

@freezed
class Goals with _$Goals {
  const factory Goals({
    required int home,
    required int away,
  }) = _Goals;

  const Goals._();

  factory Goals.fromJson(Map<String, dynamic> json) => _$GoalsFromJson(json);
}

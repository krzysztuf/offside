import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:offside/domain/entities/identifiable.dart';

part 'team.freezed.dart';
part 'team.g.dart';

@freezed
class Team with _$Team implements Identifiable {
  factory Team({
    @Default('') String id,
    required String name,
    required String abbreviation,
    String? logo,
  }) = _Team;

  Team._();

  factory Team.fromJson(Map<String, dynamic> json) => _$TeamFromJson(json);

  @override
  String get identifier => id;
}

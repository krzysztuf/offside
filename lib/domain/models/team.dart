import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:offside/domain/models/identifiable.dart';

part 'team.freezed.dart';
part 'team.g.dart';

@freezed
class Team with _$Team implements Identifiable {
  factory Team({
    required int id,
    required String name,
    String? logo,
  }) = _Team;

  Team._();

  factory Team.fromJson(Map<String, dynamic> json) => _$TeamFromJson(json);

  @override
  int get identifier => id;
}

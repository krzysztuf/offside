import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:offside/domain/entities/identifiable.dart';

part 'team.freezed.dart';
part 'team.g.dart';

@freezed
sealed class Team with _$Team implements Identifiable {
  factory Team({
    // ignore: invalid_annotation_target
    @Default('') @JsonKey(includeToJson: false) String id,
    required String name,
    required String abbreviation,
  }) = _Team;

  Team._();

  factory Team.fromJson(Map<String, dynamic> json) => _$TeamFromJson(json);

  @override
  String get identifier => id;
}

extension TeamLogo on Team {
  String? get logo => id.isNotEmpty ? 'assets/images/teams/$id.png' : null;
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:offside/domain/entities/team.dart';

part 'team_dto.freezed.dart';
part 'team_dto.g.dart';

@freezed
sealed class TeamDto with _$TeamDto {
  const factory TeamDto({
    required int id,
    required String name,
    required String abbreviation,
  }) = _TeamDto;

  const TeamDto._();

  factory TeamDto.fromJson(Map<String, dynamic> json) => _$TeamDtoFromJson(json);

  Team toEntity() => Team(
    id: abbreviation.toLowerCase(),
    name: name,
    abbreviation: abbreviation,
  );
}

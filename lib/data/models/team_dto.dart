import 'package:freezed_annotation/freezed_annotation.dart';

part 'team_dto.freezed.dart';
part 'team_dto.g.dart';

@freezed
sealed class TeamDto with _$TeamDto {
  const factory TeamDto({
    required int id,
    required String name,
    required String abbreviation,
  }) = _TeamDto;

  factory TeamDto.fromJson(Map<String, dynamic> json) => _$TeamDtoFromJson(json);
}

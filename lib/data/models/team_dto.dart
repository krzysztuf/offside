import 'package:dart_mappable/dart_mappable.dart';
import 'package:offside/domain/entities/team.dart';

part 'team_dto.mapper.dart';

@MappableClass()
class TeamDto with TeamDtoMappable {
  final int id;
  final String name;
  final String abbreviation;

  const TeamDto({
    required this.id,
    required this.name,
    required this.abbreviation,
  });

  Team toEntity() => Team(
    id: id,
    name: name,
    abbreviation: abbreviation,
  );
}

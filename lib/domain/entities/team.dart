import 'package:dart_mappable/dart_mappable.dart';
import 'package:offside/domain/entities/identifiable.dart';

part 'team.mapper.dart';

@MappableClass()
class Team with TeamMappable implements Identifiable {
  final int id;
  final String name;
  final String abbreviation;

  Team({this.id = 0, required this.name, required this.abbreviation});

  @override
  int get identifier => id;
}

extension TeamLogo on Team {
  String? get logo => id != 0 ? 'assets/images/teams/${abbreviation.toLowerCase()}.png' : null;
}

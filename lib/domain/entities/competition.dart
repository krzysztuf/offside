import 'package:dart_mappable/dart_mappable.dart';

import 'match.dart';

part 'competition.mapper.dart';

@MappableClass()
class Competition with CompetitionMappable {
  final int id;
  final String name;
  final List<Match>? matches;

  const Competition({
    required this.id,
    required this.name,
    this.matches,
  });
}

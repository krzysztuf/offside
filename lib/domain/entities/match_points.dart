import 'package:dart_mappable/dart_mappable.dart';

part 'match_points.mapper.dart';

@MappableClass()
class MatchPoints with MatchPointsMappable {
  final int field;

  const MatchPoints({
    required this.field,
  });
}

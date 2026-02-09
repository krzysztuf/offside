import 'package:dart_mappable/dart_mappable.dart';

part 'id_dto.mapper.dart';

@MappableClass()
class IdDto with IdDtoMappable {
  final int id;

  const IdDto({required this.id});
}

import 'package:dart_mappable/dart_mappable.dart';

part 'image_dto.mapper.dart';

@MappableClass()
class ImageDto with ImageDtoMappable {
  final String base64;

  const ImageDto({required this.base64});
}

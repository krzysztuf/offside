import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:offside/data/models/image_dto.dart';
import 'package:offside/data/sources/offside_api.dart';
import 'package:offside/domain/repositories/image_repository.dart';

class ApiImageRepository implements ImageRepository {
  final OffsideApi _api;

  ApiImageRepository(this._api);

  @override
  Future<String?> getDownloadUrl(String id) async {
    return 'https://picsum.photos/200/200?random=$id';
  }

  @override
  Future<int> upload(String imagePath) async {
    final imageBytes = await File(imagePath).readAsBytes();

    log("loaded bytes: ${imageBytes.length}");
    final encodedImage = base64.encode(imageBytes);
    final imageDto = ImageDto(base64: encodedImage);

    log("uploading");
    final response = await _api.uploadImage(imageDto);
    log("response id: ${response.id}}");

    return response.id;
  }
}

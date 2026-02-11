import 'package:offside/domain/repositories/image_repository.dart';

class ApiImageRepository implements ImageRepository {
  @override
  Future<String?> getDownloadUrl(String id) async {
    return 'https://picsum.photos/200/200?random=$id';
  }

  @override
  Future<String> upload(String imagePath) async {
    return 'uploaded-image-id';
  }
}

abstract interface class ImageRepository {
  Future<String?> getDownloadUrl(String id);

  Future<String> upload(String imagePath);
}

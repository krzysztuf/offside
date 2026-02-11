abstract interface class ImageRepository {
  Future<String?> getDownloadUrl(String id);

  Future<int> upload(String imagePath);
}

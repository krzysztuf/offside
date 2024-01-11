extension FirestorePathExtensions on String {
  String pathJoin(String newPart) {
    return '$this/$newPart';
  }
}

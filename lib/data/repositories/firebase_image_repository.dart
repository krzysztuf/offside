import 'dart:developer';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:offside/domain/repositories/image_repository.dart';

class FirebaseImageRepository implements ImageRepository {
  @override
  Future<String?> getUrl(String path) async {
    final ref = FirebaseStorage.instance.refFromURL(path);
    try {
      return await ref.getDownloadURL();
    } catch (e) {
      log('image not found: $path, $e');
    }

    return null;
  }
}

import 'dart:developer';
import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:offside/domain/repositories/image_repository.dart';
import 'package:uuid/uuid.dart';

class FirebaseImageRepository implements ImageRepository {
  @override
  Future<String?> getDownloadUrl(String path) async {
    final ref = FirebaseStorage.instance.ref(path);
    try {
      return await ref.getDownloadURL();
    } catch (e) {
      log('image not found: $path, $e');
    }

    return null;
  }

  @override
  Future<String> upload(String imagePath) async {
    final uniqueId = const Uuid().v4();
    
    var imageRef = FirebaseStorage.instance.ref('profile/$uniqueId.jpg');
    await imageRef.putFile(File(imagePath));

    final metadata = await imageRef.getMetadata();
    return metadata.fullPath;
  }
}

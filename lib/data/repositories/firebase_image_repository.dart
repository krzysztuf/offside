import 'dart:developer';
import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:offside/core/utils/timed_cache.dart';
import 'package:offside/domain/repositories/image_repository.dart';
import 'package:supercharged/supercharged.dart';
import 'package:uuid/uuid.dart';

class FirebaseImageRepository implements ImageRepository {
  static final caches = <String, TimedCache<String?>>{};

  @override
  Future<String?> getDownloadUrl(String path) async {
    final cache = caches.putIfAbsent(path, () => TimedCache(2.hours));
    return await cache.valueOr(updateWith: () async {
      final ref = FirebaseStorage.instance.ref(path);
      try {
        return await ref.getDownloadURL();
      } catch (e) {
        log('image not found: $path, $e');
      }

      return null;
    });
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

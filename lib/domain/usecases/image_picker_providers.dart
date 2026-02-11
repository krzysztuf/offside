import 'dart:io';

import 'package:hl_image_picker/hl_image_picker.dart';
import 'package:image_picker/image_picker.dart' as desktop;
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'image_picker_providers.g.dart';

@riverpod
Future<String?> pickProfileImage(Ref ref) async {
  if (Platform.isMacOS || Platform.isWindows || Platform.isLinux) {
    return _pickImageDesktop();
  }
  return _pickImageMobile();
}

Future<String?> _pickImageMobile() async {
  final images = await HLImagePicker().openPicker(
    pickerOptions: const HLPickerOptions(
      maxSelectedAssets: 1,
      convertHeicToJPG: true,
      convertLivePhotosToJPG: true,
      enablePreview: false,
      mediaType: MediaType.image,
    ),
    cropOptions: const HLCropOptions(
      aspectRatio: CropAspectRatio(ratioX: 1, ratioY: 1),
      compressFormat: CompressFormat.jpg,
    ),
    cropping: true,
  );

  return images.isNotEmpty ? images.first.path : null;
}

Future<String?> _pickImageDesktop() async {
  final picker = desktop.ImagePicker();
  final image = await picker.pickImage(source: desktop.ImageSource.gallery);
  return image?.path;
}

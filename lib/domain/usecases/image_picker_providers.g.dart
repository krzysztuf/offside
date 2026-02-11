// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_picker_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(pickProfileImage)
final pickProfileImageProvider = PickProfileImageProvider._();

final class PickProfileImageProvider
    extends $FunctionalProvider<AsyncValue<String?>, String?, FutureOr<String?>>
    with $FutureModifier<String?>, $FutureProvider<String?> {
  PickProfileImageProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'pickProfileImageProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$pickProfileImageHash();

  @$internal
  @override
  $FutureProviderElement<String?> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<String?> create(Ref ref) {
    return pickProfileImage(ref);
  }
}

String _$pickProfileImageHash() => r'1084f4b8e93dd369a081266e0d7baf66745cdabc';

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(currentUser)
final currentUserProvider = CurrentUserProvider._();

final class CurrentUserProvider
    extends $FunctionalProvider<AsyncValue<User?>, User?, FutureOr<User?>>
    with $FutureModifier<User?>, $FutureProvider<User?> {
  CurrentUserProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'currentUserProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$currentUserHash();

  @$internal
  @override
  $FutureProviderElement<User?> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<User?> create(Ref ref) {
    return currentUser(ref);
  }
}

String _$currentUserHash() => r'd6375f31875071c1b674498df4a483a4c942f74a';

@ProviderFor(uploadUserAvatar)
final uploadUserAvatarProvider = UploadUserAvatarFamily._();

final class UploadUserAvatarProvider
    extends $FunctionalProvider<AsyncValue<User>, User, FutureOr<User>>
    with $FutureModifier<User>, $FutureProvider<User> {
  UploadUserAvatarProvider._({
    required UploadUserAvatarFamily super.from,
    required (User, String) super.argument,
  }) : super(
         retry: null,
         name: r'uploadUserAvatarProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$uploadUserAvatarHash();

  @override
  String toString() {
    return r'uploadUserAvatarProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<User> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<User> create(Ref ref) {
    final argument = this.argument as (User, String);
    return uploadUserAvatar(ref, argument.$1, argument.$2);
  }

  @override
  bool operator ==(Object other) {
    return other is UploadUserAvatarProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$uploadUserAvatarHash() => r'2c500511a372a2428f584aebf809dca4d4b9327e';

final class UploadUserAvatarFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<User>, (User, String)> {
  UploadUserAvatarFamily._()
    : super(
        retry: null,
        name: r'uploadUserAvatarProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  UploadUserAvatarProvider call(User user, String imagePath) =>
      UploadUserAvatarProvider._(argument: (user, imagePath), from: this);

  @override
  String toString() => r'uploadUserAvatarProvider';
}

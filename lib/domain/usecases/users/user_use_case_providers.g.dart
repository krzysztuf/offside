// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_use_case_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(getCurrentUserUseCase)
final getCurrentUserUseCaseProvider = GetCurrentUserUseCaseProvider._();

final class GetCurrentUserUseCaseProvider
    extends
        $FunctionalProvider<
          GetCurrentUserUseCase,
          GetCurrentUserUseCase,
          GetCurrentUserUseCase
        >
    with $Provider<GetCurrentUserUseCase> {
  GetCurrentUserUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getCurrentUserUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getCurrentUserUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetCurrentUserUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetCurrentUserUseCase create(Ref ref) {
    return getCurrentUserUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetCurrentUserUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetCurrentUserUseCase>(value),
    );
  }
}

String _$getCurrentUserUseCaseHash() =>
    r'ed1bf8dfa623a08b988900c5a449afaf947515e3';

@ProviderFor(uploadUserAvatarUseCase)
final uploadUserAvatarUseCaseProvider = UploadUserAvatarUseCaseProvider._();

final class UploadUserAvatarUseCaseProvider
    extends
        $FunctionalProvider<
          UploadUserAvatarUseCase,
          UploadUserAvatarUseCase,
          UploadUserAvatarUseCase
        >
    with $Provider<UploadUserAvatarUseCase> {
  UploadUserAvatarUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'uploadUserAvatarUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$uploadUserAvatarUseCaseHash();

  @$internal
  @override
  $ProviderElement<UploadUserAvatarUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  UploadUserAvatarUseCase create(Ref ref) {
    return uploadUserAvatarUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(UploadUserAvatarUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<UploadUserAvatarUseCase>(value),
    );
  }
}

String _$uploadUserAvatarUseCaseHash() =>
    r'bf839aa77bb71a63df85f497ae501654509ead2a';

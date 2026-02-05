// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_is_admin.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(userIsAdmin)
final userIsAdminProvider = UserIsAdminProvider._();

final class UserIsAdminProvider extends $FunctionalProvider<bool, bool, bool>
    with $Provider<bool> {
  UserIsAdminProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'userIsAdminProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$userIsAdminHash();

  @$internal
  @override
  $ProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  bool create(Ref ref) {
    return userIsAdmin(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$userIsAdminHash() => r'aa2d26ad5083863980721b4eaea670c1d1c2d5b0';

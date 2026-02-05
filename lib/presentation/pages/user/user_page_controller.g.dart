// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_page_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(UserPageController)
final userPageControllerProvider = UserPageControllerProvider._();

final class UserPageControllerProvider
    extends $AsyncNotifierProvider<UserPageController, UserPageState> {
  UserPageControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'userPageControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$userPageControllerHash();

  @$internal
  @override
  UserPageController create() => UserPageController();
}

String _$userPageControllerHash() =>
    r'f0614979da2bc28b8a79eb35b85fa10067eda819';

abstract class _$UserPageController extends $AsyncNotifier<UserPageState> {
  FutureOr<UserPageState> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<UserPageState>, UserPageState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<UserPageState>, UserPageState>,
              AsyncValue<UserPageState>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(userOfUserPage)
final userOfUserPageProvider = UserOfUserPageProvider._();

final class UserOfUserPageProvider extends $FunctionalProvider<User, User, User>
    with $Provider<User> {
  UserOfUserPageProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'userOfUserPageProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$userOfUserPageHash();

  @$internal
  @override
  $ProviderElement<User> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  User create(Ref ref) {
    return userOfUserPage(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(User value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<User>(value),
    );
  }
}

String _$userOfUserPageHash() => r'a5ad420a209cb23759222396b40b6ebbabf744c1';

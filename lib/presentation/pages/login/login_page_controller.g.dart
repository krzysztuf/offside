// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_page_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(LoginPageController)
final loginPageControllerProvider = LoginPageControllerProvider._();

final class LoginPageControllerProvider
    extends $NotifierProvider<LoginPageController, LoginPageState> {
  LoginPageControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'loginPageControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$loginPageControllerHash();

  @$internal
  @override
  LoginPageController create() => LoginPageController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LoginPageState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LoginPageState>(value),
    );
  }
}

String _$loginPageControllerHash() =>
    r'1022d18c05ee982be4fdb9f70bfd76f36d169088';

abstract class _$LoginPageController extends $Notifier<LoginPageState> {
  LoginPageState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<LoginPageState, LoginPageState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<LoginPageState, LoginPageState>,
              LoginPageState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

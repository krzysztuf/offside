// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_sub_page_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ProfileSubPageController)
final profileSubPageControllerProvider = ProfileSubPageControllerProvider._();

final class ProfileSubPageControllerProvider
    extends $NotifierProvider<ProfileSubPageController, ProfileSubPageState> {
  ProfileSubPageControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'profileSubPageControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$profileSubPageControllerHash();

  @$internal
  @override
  ProfileSubPageController create() => ProfileSubPageController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ProfileSubPageState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ProfileSubPageState>(value),
    );
  }
}

String _$profileSubPageControllerHash() =>
    r'069d57c1a606a42b8efbac1a1fdadc1ba5ae27a1';

abstract class _$ProfileSubPageController
    extends $Notifier<ProfileSubPageState> {
  ProfileSubPageState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<ProfileSubPageState, ProfileSubPageState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ProfileSubPageState, ProfileSubPageState>,
              ProfileSubPageState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

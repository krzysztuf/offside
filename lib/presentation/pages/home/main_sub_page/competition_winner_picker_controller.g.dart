// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'competition_winner_picker_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CompetitionWinnerPickerController)
final competitionWinnerPickerControllerProvider =
    CompetitionWinnerPickerControllerProvider._();

final class CompetitionWinnerPickerControllerProvider
    extends
        $NotifierProvider<
          CompetitionWinnerPickerController,
          CompetitionWinnerPickerState
        > {
  CompetitionWinnerPickerControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'competitionWinnerPickerControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() =>
      _$competitionWinnerPickerControllerHash();

  @$internal
  @override
  CompetitionWinnerPickerController create() =>
      CompetitionWinnerPickerController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CompetitionWinnerPickerState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CompetitionWinnerPickerState>(value),
    );
  }
}

String _$competitionWinnerPickerControllerHash() =>
    r'206647d0477f582b6d4d434ee3916b533009aa14';

abstract class _$CompetitionWinnerPickerController
    extends $Notifier<CompetitionWinnerPickerState> {
  CompetitionWinnerPickerState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<CompetitionWinnerPickerState, CompetitionWinnerPickerState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                CompetitionWinnerPickerState,
                CompetitionWinnerPickerState
              >,
              CompetitionWinnerPickerState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

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
    r'e4e8e19baa893f721fd1cabfc8dcc683cda60fa6';

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

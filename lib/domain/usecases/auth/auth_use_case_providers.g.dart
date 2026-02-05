// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_use_case_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(logInUseCase)
final logInUseCaseProvider = LogInUseCaseProvider._();

final class LogInUseCaseProvider
    extends $FunctionalProvider<LogInUseCase, LogInUseCase, LogInUseCase>
    with $Provider<LogInUseCase> {
  LogInUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'logInUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$logInUseCaseHash();

  @$internal
  @override
  $ProviderElement<LogInUseCase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  LogInUseCase create(Ref ref) {
    return logInUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LogInUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LogInUseCase>(value),
    );
  }
}

String _$logInUseCaseHash() => r'0358414dc464b464e99f7300ff289ee82a1f3527';

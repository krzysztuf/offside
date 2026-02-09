// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(logIn)
final logInProvider = LogInFamily._();

final class LogInProvider
    extends $FunctionalProvider<AsyncValue<int>, int, FutureOr<int>>
    with $FutureModifier<int>, $FutureProvider<int> {
  LogInProvider._({
    required LogInFamily super.from,
    required (String, String) super.argument,
  }) : super(
         retry: null,
         name: r'logInProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$logInHash();

  @override
  String toString() {
    return r'logInProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<int> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<int> create(Ref ref) {
    final argument = this.argument as (String, String);
    return logIn(ref, argument.$1, argument.$2);
  }

  @override
  bool operator ==(Object other) {
    return other is LogInProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$logInHash() => r'4fbf6baa975defa059bcd5616005ebb07785df55';

final class LogInFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<int>, (String, String)> {
  LogInFamily._()
    : super(
        retry: null,
        name: r'logInProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  LogInProvider call(String username, String password) =>
      LogInProvider._(argument: (username, password), from: this);

  @override
  String toString() => r'logInProvider';
}

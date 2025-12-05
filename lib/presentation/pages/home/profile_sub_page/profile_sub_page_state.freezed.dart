// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_sub_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfileSubPageState {
  User? get user => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  bool get uploading => throw _privateConstructorUsedError;

  /// Create a copy of ProfileSubPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileSubPageStateCopyWith<ProfileSubPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileSubPageStateCopyWith<$Res> {
  factory $ProfileSubPageStateCopyWith(
          ProfileSubPageState value, $Res Function(ProfileSubPageState) then) =
      _$ProfileSubPageStateCopyWithImpl<$Res, ProfileSubPageState>;
  @useResult
  $Res call({User? user, bool loading, bool uploading});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$ProfileSubPageStateCopyWithImpl<$Res, $Val extends ProfileSubPageState>
    implements $ProfileSubPageStateCopyWith<$Res> {
  _$ProfileSubPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileSubPageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? loading = null,
    Object? uploading = null,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      uploading: null == uploading
          ? _value.uploading
          : uploading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of ProfileSubPageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProfileSubPageStateImplCopyWith<$Res>
    implements $ProfileSubPageStateCopyWith<$Res> {
  factory _$$ProfileSubPageStateImplCopyWith(_$ProfileSubPageStateImpl value,
          $Res Function(_$ProfileSubPageStateImpl) then) =
      __$$ProfileSubPageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User? user, bool loading, bool uploading});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$ProfileSubPageStateImplCopyWithImpl<$Res>
    extends _$ProfileSubPageStateCopyWithImpl<$Res, _$ProfileSubPageStateImpl>
    implements _$$ProfileSubPageStateImplCopyWith<$Res> {
  __$$ProfileSubPageStateImplCopyWithImpl(_$ProfileSubPageStateImpl _value,
      $Res Function(_$ProfileSubPageStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileSubPageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? loading = null,
    Object? uploading = null,
  }) {
    return _then(_$ProfileSubPageStateImpl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      uploading: null == uploading
          ? _value.uploading
          : uploading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ProfileSubPageStateImpl extends _ProfileSubPageState {
  const _$ProfileSubPageStateImpl(
      {this.user, required this.loading, this.uploading = false})
      : super._();

  @override
  final User? user;
  @override
  final bool loading;
  @override
  @JsonKey()
  final bool uploading;

  @override
  String toString() {
    return 'ProfileSubPageState(user: $user, loading: $loading, uploading: $uploading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileSubPageStateImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.uploading, uploading) ||
                other.uploading == uploading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, loading, uploading);

  /// Create a copy of ProfileSubPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileSubPageStateImplCopyWith<_$ProfileSubPageStateImpl> get copyWith =>
      __$$ProfileSubPageStateImplCopyWithImpl<_$ProfileSubPageStateImpl>(
          this, _$identity);
}

abstract class _ProfileSubPageState extends ProfileSubPageState {
  const factory _ProfileSubPageState(
      {final User? user,
      required final bool loading,
      final bool uploading}) = _$ProfileSubPageStateImpl;
  const _ProfileSubPageState._() : super._();

  @override
  User? get user;
  @override
  bool get loading;
  @override
  bool get uploading;

  /// Create a copy of ProfileSubPageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileSubPageStateImplCopyWith<_$ProfileSubPageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

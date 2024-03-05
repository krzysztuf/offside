// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserPageState {
  bool get loading => throw _privateConstructorUsedError;
  List<Match> get match => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserPageStateCopyWith<UserPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserPageStateCopyWith<$Res> {
  factory $UserPageStateCopyWith(
          UserPageState value, $Res Function(UserPageState) then) =
      _$UserPageStateCopyWithImpl<$Res, UserPageState>;
  @useResult
  $Res call({bool loading, List<Match> match});
}

/// @nodoc
class _$UserPageStateCopyWithImpl<$Res, $Val extends UserPageState>
    implements $UserPageStateCopyWith<$Res> {
  _$UserPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? match = null,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      match: null == match
          ? _value.match
          : match // ignore: cast_nullable_to_non_nullable
              as List<Match>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserPageStateImplCopyWith<$Res>
    implements $UserPageStateCopyWith<$Res> {
  factory _$$UserPageStateImplCopyWith(
          _$UserPageStateImpl value, $Res Function(_$UserPageStateImpl) then) =
      __$$UserPageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool loading, List<Match> match});
}

/// @nodoc
class __$$UserPageStateImplCopyWithImpl<$Res>
    extends _$UserPageStateCopyWithImpl<$Res, _$UserPageStateImpl>
    implements _$$UserPageStateImplCopyWith<$Res> {
  __$$UserPageStateImplCopyWithImpl(
      _$UserPageStateImpl _value, $Res Function(_$UserPageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? match = null,
  }) {
    return _then(_$UserPageStateImpl(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      match: null == match
          ? _value._match
          : match // ignore: cast_nullable_to_non_nullable
              as List<Match>,
    ));
  }
}

/// @nodoc

class _$UserPageStateImpl extends _UserPageState {
  const _$UserPageStateImpl(
      {required this.loading, required final List<Match> match})
      : _match = match,
        super._();

  @override
  final bool loading;
  final List<Match> _match;
  @override
  List<Match> get match {
    if (_match is EqualUnmodifiableListView) return _match;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_match);
  }

  @override
  String toString() {
    return 'UserPageState(loading: $loading, match: $match)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserPageStateImpl &&
            (identical(other.loading, loading) || other.loading == loading) &&
            const DeepCollectionEquality().equals(other._match, _match));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, loading, const DeepCollectionEquality().hash(_match));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserPageStateImplCopyWith<_$UserPageStateImpl> get copyWith =>
      __$$UserPageStateImplCopyWithImpl<_$UserPageStateImpl>(this, _$identity);
}

abstract class _UserPageState extends UserPageState {
  const factory _UserPageState(
      {required final bool loading,
      required final List<Match> match}) = _$UserPageStateImpl;
  const _UserPageState._() : super._();

  @override
  bool get loading;
  @override
  List<Match> get match;
  @override
  @JsonKey(ignore: true)
  _$$UserPageStateImplCopyWith<_$UserPageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

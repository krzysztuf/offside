// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_table_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MainTableState {
  List<UserScores> get userScores => throw _privateConstructorUsedError;
  bool get calculating => throw _privateConstructorUsedError;
  String get winnerId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainTableStateCopyWith<MainTableState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainTableStateCopyWith<$Res> {
  factory $MainTableStateCopyWith(
          MainTableState value, $Res Function(MainTableState) then) =
      _$MainTableStateCopyWithImpl<$Res, MainTableState>;
  @useResult
  $Res call({List<UserScores> userScores, bool calculating, String winnerId});
}

/// @nodoc
class _$MainTableStateCopyWithImpl<$Res, $Val extends MainTableState>
    implements $MainTableStateCopyWith<$Res> {
  _$MainTableStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userScores = null,
    Object? calculating = null,
    Object? winnerId = null,
  }) {
    return _then(_value.copyWith(
      userScores: null == userScores
          ? _value.userScores
          : userScores // ignore: cast_nullable_to_non_nullable
              as List<UserScores>,
      calculating: null == calculating
          ? _value.calculating
          : calculating // ignore: cast_nullable_to_non_nullable
              as bool,
      winnerId: null == winnerId
          ? _value.winnerId
          : winnerId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MainTableStateImplCopyWith<$Res>
    implements $MainTableStateCopyWith<$Res> {
  factory _$$MainTableStateImplCopyWith(_$MainTableStateImpl value,
          $Res Function(_$MainTableStateImpl) then) =
      __$$MainTableStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<UserScores> userScores, bool calculating, String winnerId});
}

/// @nodoc
class __$$MainTableStateImplCopyWithImpl<$Res>
    extends _$MainTableStateCopyWithImpl<$Res, _$MainTableStateImpl>
    implements _$$MainTableStateImplCopyWith<$Res> {
  __$$MainTableStateImplCopyWithImpl(
      _$MainTableStateImpl _value, $Res Function(_$MainTableStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userScores = null,
    Object? calculating = null,
    Object? winnerId = null,
  }) {
    return _then(_$MainTableStateImpl(
      userScores: null == userScores
          ? _value._userScores
          : userScores // ignore: cast_nullable_to_non_nullable
              as List<UserScores>,
      calculating: null == calculating
          ? _value.calculating
          : calculating // ignore: cast_nullable_to_non_nullable
              as bool,
      winnerId: null == winnerId
          ? _value.winnerId
          : winnerId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MainTableStateImpl extends _MainTableState {
  const _$MainTableStateImpl(
      {required final List<UserScores> userScores,
      this.calculating = true,
      this.winnerId = ''})
      : _userScores = userScores,
        super._();

  final List<UserScores> _userScores;
  @override
  List<UserScores> get userScores {
    if (_userScores is EqualUnmodifiableListView) return _userScores;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userScores);
  }

  @override
  @JsonKey()
  final bool calculating;
  @override
  @JsonKey()
  final String winnerId;

  @override
  String toString() {
    return 'MainTableState(userScores: $userScores, calculating: $calculating, winnerId: $winnerId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainTableStateImpl &&
            const DeepCollectionEquality()
                .equals(other._userScores, _userScores) &&
            (identical(other.calculating, calculating) ||
                other.calculating == calculating) &&
            (identical(other.winnerId, winnerId) ||
                other.winnerId == winnerId));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_userScores), calculating, winnerId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainTableStateImplCopyWith<_$MainTableStateImpl> get copyWith =>
      __$$MainTableStateImplCopyWithImpl<_$MainTableStateImpl>(
          this, _$identity);
}

abstract class _MainTableState extends MainTableState {
  const factory _MainTableState(
      {required final List<UserScores> userScores,
      final bool calculating,
      final String winnerId}) = _$MainTableStateImpl;
  const _MainTableState._() : super._();

  @override
  List<UserScores> get userScores;
  @override
  bool get calculating;
  @override
  String get winnerId;
  @override
  @JsonKey(ignore: true)
  _$$MainTableStateImplCopyWith<_$MainTableStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

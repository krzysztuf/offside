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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserPageState {
  User get user => throw _privateConstructorUsedError;
  List<Bet> get bets => throw _privateConstructorUsedError;
  List<Match> get matches => throw _privateConstructorUsedError;

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
  $Res call({User user, List<Bet> bets, List<Match> matches});

  $UserCopyWith<$Res> get user;
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
    Object? user = null,
    Object? bets = null,
    Object? matches = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      bets: null == bets
          ? _value.bets
          : bets // ignore: cast_nullable_to_non_nullable
              as List<Bet>,
      matches: null == matches
          ? _value.matches
          : matches // ignore: cast_nullable_to_non_nullable
              as List<Match>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
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
  $Res call({User user, List<Bet> bets, List<Match> matches});

  @override
  $UserCopyWith<$Res> get user;
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
    Object? user = null,
    Object? bets = null,
    Object? matches = null,
  }) {
    return _then(_$UserPageStateImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      bets: null == bets
          ? _value._bets
          : bets // ignore: cast_nullable_to_non_nullable
              as List<Bet>,
      matches: null == matches
          ? _value._matches
          : matches // ignore: cast_nullable_to_non_nullable
              as List<Match>,
    ));
  }
}

/// @nodoc

class _$UserPageStateImpl extends _UserPageState {
  const _$UserPageStateImpl(
      {required this.user,
      required final List<Bet> bets,
      required final List<Match> matches})
      : _bets = bets,
        _matches = matches,
        super._();

  @override
  final User user;
  final List<Bet> _bets;
  @override
  List<Bet> get bets {
    if (_bets is EqualUnmodifiableListView) return _bets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bets);
  }

  final List<Match> _matches;
  @override
  List<Match> get matches {
    if (_matches is EqualUnmodifiableListView) return _matches;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_matches);
  }

  @override
  String toString() {
    return 'UserPageState(user: $user, bets: $bets, matches: $matches)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserPageStateImpl &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality().equals(other._bets, _bets) &&
            const DeepCollectionEquality().equals(other._matches, _matches));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      user,
      const DeepCollectionEquality().hash(_bets),
      const DeepCollectionEquality().hash(_matches));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserPageStateImplCopyWith<_$UserPageStateImpl> get copyWith =>
      __$$UserPageStateImplCopyWithImpl<_$UserPageStateImpl>(this, _$identity);
}

abstract class _UserPageState extends UserPageState {
  const factory _UserPageState(
      {required final User user,
      required final List<Bet> bets,
      required final List<Match> matches}) = _$UserPageStateImpl;
  const _UserPageState._() : super._();

  @override
  User get user;
  @override
  List<Bet> get bets;
  @override
  List<Match> get matches;
  @override
  @JsonKey(ignore: true)
  _$$UserPageStateImplCopyWith<_$UserPageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

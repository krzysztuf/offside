// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'match_points.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MatchPoints _$MatchPointsFromJson(Map<String, dynamic> json) {
  return _MatchPoints.fromJson(json);
}

/// @nodoc
mixin _$MatchPoints {
  int get field => throw _privateConstructorUsedError;

  /// Serializes this MatchPoints to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MatchPoints
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MatchPointsCopyWith<MatchPoints> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatchPointsCopyWith<$Res> {
  factory $MatchPointsCopyWith(
          MatchPoints value, $Res Function(MatchPoints) then) =
      _$MatchPointsCopyWithImpl<$Res, MatchPoints>;
  @useResult
  $Res call({int field});
}

/// @nodoc
class _$MatchPointsCopyWithImpl<$Res, $Val extends MatchPoints>
    implements $MatchPointsCopyWith<$Res> {
  _$MatchPointsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MatchPoints
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field = null,
  }) {
    return _then(_value.copyWith(
      field: null == field
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MatchPointsImplCopyWith<$Res>
    implements $MatchPointsCopyWith<$Res> {
  factory _$$MatchPointsImplCopyWith(
          _$MatchPointsImpl value, $Res Function(_$MatchPointsImpl) then) =
      __$$MatchPointsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int field});
}

/// @nodoc
class __$$MatchPointsImplCopyWithImpl<$Res>
    extends _$MatchPointsCopyWithImpl<$Res, _$MatchPointsImpl>
    implements _$$MatchPointsImplCopyWith<$Res> {
  __$$MatchPointsImplCopyWithImpl(
      _$MatchPointsImpl _value, $Res Function(_$MatchPointsImpl) _then)
      : super(_value, _then);

  /// Create a copy of MatchPoints
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field = null,
  }) {
    return _then(_$MatchPointsImpl(
      field: null == field
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MatchPointsImpl extends _MatchPoints {
  const _$MatchPointsImpl({required this.field}) : super._();

  factory _$MatchPointsImpl.fromJson(Map<String, dynamic> json) =>
      _$$MatchPointsImplFromJson(json);

  @override
  final int field;

  @override
  String toString() {
    return 'MatchPoints(field: $field)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MatchPointsImpl &&
            (identical(other.field, field) || other.field == field));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, field);

  /// Create a copy of MatchPoints
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MatchPointsImplCopyWith<_$MatchPointsImpl> get copyWith =>
      __$$MatchPointsImplCopyWithImpl<_$MatchPointsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MatchPointsImplToJson(
      this,
    );
  }
}

abstract class _MatchPoints extends MatchPoints {
  const factory _MatchPoints({required final int field}) = _$MatchPointsImpl;
  const _MatchPoints._() : super._();

  factory _MatchPoints.fromJson(Map<String, dynamic> json) =
      _$MatchPointsImpl.fromJson;

  @override
  int get field;

  /// Create a copy of MatchPoints
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MatchPointsImplCopyWith<_$MatchPointsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

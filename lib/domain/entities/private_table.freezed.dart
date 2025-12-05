// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'private_table.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PrivateTable _$PrivateTableFromJson(Map<String, dynamic> json) {
  return _PrivateTable.fromJson(json);
}

/// @nodoc
mixin _$PrivateTable {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get ownerId => throw _privateConstructorUsedError;
  List<String> get memberIds => throw _privateConstructorUsedError;

  /// Serializes this PrivateTable to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PrivateTable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PrivateTableCopyWith<PrivateTable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrivateTableCopyWith<$Res> {
  factory $PrivateTableCopyWith(
          PrivateTable value, $Res Function(PrivateTable) then) =
      _$PrivateTableCopyWithImpl<$Res, PrivateTable>;
  @useResult
  $Res call({String id, String name, String ownerId, List<String> memberIds});
}

/// @nodoc
class _$PrivateTableCopyWithImpl<$Res, $Val extends PrivateTable>
    implements $PrivateTableCopyWith<$Res> {
  _$PrivateTableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PrivateTable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? ownerId = null,
    Object? memberIds = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String,
      memberIds: null == memberIds
          ? _value.memberIds
          : memberIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PrivateTableImplCopyWith<$Res>
    implements $PrivateTableCopyWith<$Res> {
  factory _$$PrivateTableImplCopyWith(
          _$PrivateTableImpl value, $Res Function(_$PrivateTableImpl) then) =
      __$$PrivateTableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String ownerId, List<String> memberIds});
}

/// @nodoc
class __$$PrivateTableImplCopyWithImpl<$Res>
    extends _$PrivateTableCopyWithImpl<$Res, _$PrivateTableImpl>
    implements _$$PrivateTableImplCopyWith<$Res> {
  __$$PrivateTableImplCopyWithImpl(
      _$PrivateTableImpl _value, $Res Function(_$PrivateTableImpl) _then)
      : super(_value, _then);

  /// Create a copy of PrivateTable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? ownerId = null,
    Object? memberIds = null,
  }) {
    return _then(_$PrivateTableImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String,
      memberIds: null == memberIds
          ? _value._memberIds
          : memberIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PrivateTableImpl extends _PrivateTable {
  const _$PrivateTableImpl(
      {this.id = '',
      required this.name,
      required this.ownerId,
      required final List<String> memberIds})
      : _memberIds = memberIds,
        super._();

  factory _$PrivateTableImpl.fromJson(Map<String, dynamic> json) =>
      _$$PrivateTableImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  final String name;
  @override
  final String ownerId;
  final List<String> _memberIds;
  @override
  List<String> get memberIds {
    if (_memberIds is EqualUnmodifiableListView) return _memberIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_memberIds);
  }

  @override
  String toString() {
    return 'PrivateTable(id: $id, name: $name, ownerId: $ownerId, memberIds: $memberIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrivateTableImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            const DeepCollectionEquality()
                .equals(other._memberIds, _memberIds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, ownerId,
      const DeepCollectionEquality().hash(_memberIds));

  /// Create a copy of PrivateTable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PrivateTableImplCopyWith<_$PrivateTableImpl> get copyWith =>
      __$$PrivateTableImplCopyWithImpl<_$PrivateTableImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PrivateTableImplToJson(
      this,
    );
  }
}

abstract class _PrivateTable extends PrivateTable {
  const factory _PrivateTable(
      {final String id,
      required final String name,
      required final String ownerId,
      required final List<String> memberIds}) = _$PrivateTableImpl;
  const _PrivateTable._() : super._();

  factory _PrivateTable.fromJson(Map<String, dynamic> json) =
      _$PrivateTableImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get ownerId;
  @override
  List<String> get memberIds;

  /// Create a copy of PrivateTable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PrivateTableImplCopyWith<_$PrivateTableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

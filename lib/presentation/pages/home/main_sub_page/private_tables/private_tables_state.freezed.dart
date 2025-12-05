// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'private_tables_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PrivateTablesState {
  List<PrivateTable> get tables => throw _privateConstructorUsedError;

  /// Create a copy of PrivateTablesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PrivateTablesStateCopyWith<PrivateTablesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrivateTablesStateCopyWith<$Res> {
  factory $PrivateTablesStateCopyWith(
          PrivateTablesState value, $Res Function(PrivateTablesState) then) =
      _$PrivateTablesStateCopyWithImpl<$Res, PrivateTablesState>;
  @useResult
  $Res call({List<PrivateTable> tables});
}

/// @nodoc
class _$PrivateTablesStateCopyWithImpl<$Res, $Val extends PrivateTablesState>
    implements $PrivateTablesStateCopyWith<$Res> {
  _$PrivateTablesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PrivateTablesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tables = null,
  }) {
    return _then(_value.copyWith(
      tables: null == tables
          ? _value.tables
          : tables // ignore: cast_nullable_to_non_nullable
              as List<PrivateTable>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PrivateTablesStateImplCopyWith<$Res>
    implements $PrivateTablesStateCopyWith<$Res> {
  factory _$$PrivateTablesStateImplCopyWith(_$PrivateTablesStateImpl value,
          $Res Function(_$PrivateTablesStateImpl) then) =
      __$$PrivateTablesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PrivateTable> tables});
}

/// @nodoc
class __$$PrivateTablesStateImplCopyWithImpl<$Res>
    extends _$PrivateTablesStateCopyWithImpl<$Res, _$PrivateTablesStateImpl>
    implements _$$PrivateTablesStateImplCopyWith<$Res> {
  __$$PrivateTablesStateImplCopyWithImpl(_$PrivateTablesStateImpl _value,
      $Res Function(_$PrivateTablesStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PrivateTablesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tables = null,
  }) {
    return _then(_$PrivateTablesStateImpl(
      tables: null == tables
          ? _value._tables
          : tables // ignore: cast_nullable_to_non_nullable
              as List<PrivateTable>,
    ));
  }
}

/// @nodoc

class _$PrivateTablesStateImpl extends _PrivateTablesState {
  const _$PrivateTablesStateImpl({required final List<PrivateTable> tables})
      : _tables = tables,
        super._();

  final List<PrivateTable> _tables;
  @override
  List<PrivateTable> get tables {
    if (_tables is EqualUnmodifiableListView) return _tables;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tables);
  }

  @override
  String toString() {
    return 'PrivateTablesState(tables: $tables)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrivateTablesStateImpl &&
            const DeepCollectionEquality().equals(other._tables, _tables));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tables));

  /// Create a copy of PrivateTablesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PrivateTablesStateImplCopyWith<_$PrivateTablesStateImpl> get copyWith =>
      __$$PrivateTablesStateImplCopyWithImpl<_$PrivateTablesStateImpl>(
          this, _$identity);
}

abstract class _PrivateTablesState extends PrivateTablesState {
  const factory _PrivateTablesState(
      {required final List<PrivateTable> tables}) = _$PrivateTablesStateImpl;
  const _PrivateTablesState._() : super._();

  @override
  List<PrivateTable> get tables;

  /// Create a copy of PrivateTablesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PrivateTablesStateImplCopyWith<_$PrivateTablesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

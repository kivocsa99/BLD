// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customerordermodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CustomerOrderModel _$CustomerOrderModelFromJson(Map<String, dynamic> json) {
  return _CustomerOrderModel.fromJson(json);
}

/// @nodoc
mixin _$CustomerOrderModel {
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerOrderModelCopyWith<CustomerOrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerOrderModelCopyWith<$Res> {
  factory $CustomerOrderModelCopyWith(
          CustomerOrderModel value, $Res Function(CustomerOrderModel) then) =
      _$CustomerOrderModelCopyWithImpl<$Res, CustomerOrderModel>;
  @useResult
  $Res call({String? id});
}

/// @nodoc
class _$CustomerOrderModelCopyWithImpl<$Res, $Val extends CustomerOrderModel>
    implements $CustomerOrderModelCopyWith<$Res> {
  _$CustomerOrderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CustomerOrderModelCopyWith<$Res>
    implements $CustomerOrderModelCopyWith<$Res> {
  factory _$$_CustomerOrderModelCopyWith(_$_CustomerOrderModel value,
          $Res Function(_$_CustomerOrderModel) then) =
      __$$_CustomerOrderModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id});
}

/// @nodoc
class __$$_CustomerOrderModelCopyWithImpl<$Res>
    extends _$CustomerOrderModelCopyWithImpl<$Res, _$_CustomerOrderModel>
    implements _$$_CustomerOrderModelCopyWith<$Res> {
  __$$_CustomerOrderModelCopyWithImpl(
      _$_CustomerOrderModel _value, $Res Function(_$_CustomerOrderModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$_CustomerOrderModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CustomerOrderModel extends _CustomerOrderModel {
  const _$_CustomerOrderModel({this.id}) : super._();

  factory _$_CustomerOrderModel.fromJson(Map<String, dynamic> json) =>
      _$$_CustomerOrderModelFromJson(json);

  @override
  final String? id;

  @override
  String toString() {
    return 'CustomerOrderModel(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CustomerOrderModel &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CustomerOrderModelCopyWith<_$_CustomerOrderModel> get copyWith =>
      __$$_CustomerOrderModelCopyWithImpl<_$_CustomerOrderModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CustomerOrderModelToJson(
      this,
    );
  }
}

abstract class _CustomerOrderModel extends CustomerOrderModel {
  const factory _CustomerOrderModel({final String? id}) = _$_CustomerOrderModel;
  const _CustomerOrderModel._() : super._();

  factory _CustomerOrderModel.fromJson(Map<String, dynamic> json) =
      _$_CustomerOrderModel.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$_CustomerOrderModelCopyWith<_$_CustomerOrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}
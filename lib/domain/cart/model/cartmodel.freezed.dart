// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cartmodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CartModel _$CartModelFromJson(Map<String, dynamic> json) {
  return _CartModel.fromJson(json);
}

/// @nodoc
mixin _$CartModel {
  int? get id => throw _privateConstructorUsedError;
  int? get user_id => throw _privateConstructorUsedError;
  int? get supplier_id => throw _privateConstructorUsedError;
  int? get supplier_product_id => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  String? get created_at => throw _privateConstructorUsedError;
  String? get updated_at => throw _privateConstructorUsedError;
  String? get deleted_at => throw _privateConstructorUsedError;
  SuppliersModel? get supplier => throw _privateConstructorUsedError;
  CategoryAndProductsModel? get supplier_product =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartModelCopyWith<CartModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartModelCopyWith<$Res> {
  factory $CartModelCopyWith(CartModel value, $Res Function(CartModel) then) =
      _$CartModelCopyWithImpl<$Res, CartModel>;
  @useResult
  $Res call(
      {int? id,
      int? user_id,
      int? supplier_id,
      int? supplier_product_id,
      int? quantity,
      String? created_at,
      String? updated_at,
      String? deleted_at,
      SuppliersModel? supplier,
      CategoryAndProductsModel? supplier_product});

  $SuppliersModelCopyWith<$Res>? get supplier;
  $CategoryAndProductsModelCopyWith<$Res>? get supplier_product;
}

/// @nodoc
class _$CartModelCopyWithImpl<$Res, $Val extends CartModel>
    implements $CartModelCopyWith<$Res> {
  _$CartModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? user_id = freezed,
    Object? supplier_id = freezed,
    Object? supplier_product_id = freezed,
    Object? quantity = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? deleted_at = freezed,
    Object? supplier = freezed,
    Object? supplier_product = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      user_id: freezed == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int?,
      supplier_id: freezed == supplier_id
          ? _value.supplier_id
          : supplier_id // ignore: cast_nullable_to_non_nullable
              as int?,
      supplier_product_id: freezed == supplier_product_id
          ? _value.supplier_product_id
          : supplier_product_id // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String?,
      deleted_at: freezed == deleted_at
          ? _value.deleted_at
          : deleted_at // ignore: cast_nullable_to_non_nullable
              as String?,
      supplier: freezed == supplier
          ? _value.supplier
          : supplier // ignore: cast_nullable_to_non_nullable
              as SuppliersModel?,
      supplier_product: freezed == supplier_product
          ? _value.supplier_product
          : supplier_product // ignore: cast_nullable_to_non_nullable
              as CategoryAndProductsModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SuppliersModelCopyWith<$Res>? get supplier {
    if (_value.supplier == null) {
      return null;
    }

    return $SuppliersModelCopyWith<$Res>(_value.supplier!, (value) {
      return _then(_value.copyWith(supplier: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryAndProductsModelCopyWith<$Res>? get supplier_product {
    if (_value.supplier_product == null) {
      return null;
    }

    return $CategoryAndProductsModelCopyWith<$Res>(_value.supplier_product!,
        (value) {
      return _then(_value.copyWith(supplier_product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CartModelCopyWith<$Res> implements $CartModelCopyWith<$Res> {
  factory _$$_CartModelCopyWith(
          _$_CartModel value, $Res Function(_$_CartModel) then) =
      __$$_CartModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? user_id,
      int? supplier_id,
      int? supplier_product_id,
      int? quantity,
      String? created_at,
      String? updated_at,
      String? deleted_at,
      SuppliersModel? supplier,
      CategoryAndProductsModel? supplier_product});

  @override
  $SuppliersModelCopyWith<$Res>? get supplier;
  @override
  $CategoryAndProductsModelCopyWith<$Res>? get supplier_product;
}

/// @nodoc
class __$$_CartModelCopyWithImpl<$Res>
    extends _$CartModelCopyWithImpl<$Res, _$_CartModel>
    implements _$$_CartModelCopyWith<$Res> {
  __$$_CartModelCopyWithImpl(
      _$_CartModel _value, $Res Function(_$_CartModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? user_id = freezed,
    Object? supplier_id = freezed,
    Object? supplier_product_id = freezed,
    Object? quantity = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? deleted_at = freezed,
    Object? supplier = freezed,
    Object? supplier_product = freezed,
  }) {
    return _then(_$_CartModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      user_id: freezed == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int?,
      supplier_id: freezed == supplier_id
          ? _value.supplier_id
          : supplier_id // ignore: cast_nullable_to_non_nullable
              as int?,
      supplier_product_id: freezed == supplier_product_id
          ? _value.supplier_product_id
          : supplier_product_id // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String?,
      deleted_at: freezed == deleted_at
          ? _value.deleted_at
          : deleted_at // ignore: cast_nullable_to_non_nullable
              as String?,
      supplier: freezed == supplier
          ? _value.supplier
          : supplier // ignore: cast_nullable_to_non_nullable
              as SuppliersModel?,
      supplier_product: freezed == supplier_product
          ? _value.supplier_product
          : supplier_product // ignore: cast_nullable_to_non_nullable
              as CategoryAndProductsModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CartModel extends _CartModel {
  const _$_CartModel(
      {this.id,
      this.user_id,
      this.supplier_id,
      this.supplier_product_id,
      this.quantity,
      this.created_at,
      this.updated_at,
      this.deleted_at,
      this.supplier,
      this.supplier_product})
      : super._();

  factory _$_CartModel.fromJson(Map<String, dynamic> json) =>
      _$$_CartModelFromJson(json);

  @override
  final int? id;
  @override
  final int? user_id;
  @override
  final int? supplier_id;
  @override
  final int? supplier_product_id;
  @override
  final int? quantity;
  @override
  final String? created_at;
  @override
  final String? updated_at;
  @override
  final String? deleted_at;
  @override
  final SuppliersModel? supplier;
  @override
  final CategoryAndProductsModel? supplier_product;

  @override
  String toString() {
    return 'CartModel(id: $id, user_id: $user_id, supplier_id: $supplier_id, supplier_product_id: $supplier_product_id, quantity: $quantity, created_at: $created_at, updated_at: $updated_at, deleted_at: $deleted_at, supplier: $supplier, supplier_product: $supplier_product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user_id, user_id) || other.user_id == user_id) &&
            (identical(other.supplier_id, supplier_id) ||
                other.supplier_id == supplier_id) &&
            (identical(other.supplier_product_id, supplier_product_id) ||
                other.supplier_product_id == supplier_product_id) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at) &&
            (identical(other.deleted_at, deleted_at) ||
                other.deleted_at == deleted_at) &&
            (identical(other.supplier, supplier) ||
                other.supplier == supplier) &&
            (identical(other.supplier_product, supplier_product) ||
                other.supplier_product == supplier_product));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      user_id,
      supplier_id,
      supplier_product_id,
      quantity,
      created_at,
      updated_at,
      deleted_at,
      supplier,
      supplier_product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartModelCopyWith<_$_CartModel> get copyWith =>
      __$$_CartModelCopyWithImpl<_$_CartModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CartModelToJson(
      this,
    );
  }
}

abstract class _CartModel extends CartModel {
  const factory _CartModel(
      {final int? id,
      final int? user_id,
      final int? supplier_id,
      final int? supplier_product_id,
      final int? quantity,
      final String? created_at,
      final String? updated_at,
      final String? deleted_at,
      final SuppliersModel? supplier,
      final CategoryAndProductsModel? supplier_product}) = _$_CartModel;
  const _CartModel._() : super._();

  factory _CartModel.fromJson(Map<String, dynamic> json) =
      _$_CartModel.fromJson;

  @override
  int? get id;
  @override
  int? get user_id;
  @override
  int? get supplier_id;
  @override
  int? get supplier_product_id;
  @override
  int? get quantity;
  @override
  String? get created_at;
  @override
  String? get updated_at;
  @override
  String? get deleted_at;
  @override
  SuppliersModel? get supplier;
  @override
  CategoryAndProductsModel? get supplier_product;
  @override
  @JsonKey(ignore: true)
  _$$_CartModelCopyWith<_$_CartModel> get copyWith =>
      throw _privateConstructorUsedError;
}

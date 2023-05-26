// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'categoryandproductsmodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CategoryAndProductsModel _$CategoryAndProductsModelFromJson(
    Map<String, dynamic> json) {
  return _CategoryAndProductsModel.fromJson(json);
}

/// @nodoc
mixin _$CategoryAndProductsModel {
  int? get id => throw _privateConstructorUsedError;
  int? get supplier_id => throw _privateConstructorUsedError;
  int? get product_id => throw _privateConstructorUsedError;
  num? get price => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  int? get is_published => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get created_at => throw _privateConstructorUsedError;
  String? get updated_at => throw _privateConstructorUsedError;
  String? get deleted_at => throw _privateConstructorUsedError;
  ProductModel? get product => throw _privateConstructorUsedError;
  List<FilesModel>? get files => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryAndProductsModelCopyWith<CategoryAndProductsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryAndProductsModelCopyWith<$Res> {
  factory $CategoryAndProductsModelCopyWith(CategoryAndProductsModel value,
          $Res Function(CategoryAndProductsModel) then) =
      _$CategoryAndProductsModelCopyWithImpl<$Res, CategoryAndProductsModel>;
  @useResult
  $Res call(
      {int? id,
      int? supplier_id,
      int? product_id,
      num? price,
      int? quantity,
      int? is_published,
      String? name,
      String? image,
      String? created_at,
      String? updated_at,
      String? deleted_at,
      ProductModel? product,
      List<FilesModel>? files});

  $ProductModelCopyWith<$Res>? get product;
}

/// @nodoc
class _$CategoryAndProductsModelCopyWithImpl<$Res,
        $Val extends CategoryAndProductsModel>
    implements $CategoryAndProductsModelCopyWith<$Res> {
  _$CategoryAndProductsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? supplier_id = freezed,
    Object? product_id = freezed,
    Object? price = freezed,
    Object? quantity = freezed,
    Object? is_published = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? deleted_at = freezed,
    Object? product = freezed,
    Object? files = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      supplier_id: freezed == supplier_id
          ? _value.supplier_id
          : supplier_id // ignore: cast_nullable_to_non_nullable
              as int?,
      product_id: freezed == product_id
          ? _value.product_id
          : product_id // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      is_published: freezed == is_published
          ? _value.is_published
          : is_published // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
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
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel?,
      files: freezed == files
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as List<FilesModel>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductModelCopyWith<$Res>? get product {
    if (_value.product == null) {
      return null;
    }

    return $ProductModelCopyWith<$Res>(_value.product!, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CategoryAndProductsModelCopyWith<$Res>
    implements $CategoryAndProductsModelCopyWith<$Res> {
  factory _$$_CategoryAndProductsModelCopyWith(
          _$_CategoryAndProductsModel value,
          $Res Function(_$_CategoryAndProductsModel) then) =
      __$$_CategoryAndProductsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? supplier_id,
      int? product_id,
      num? price,
      int? quantity,
      int? is_published,
      String? name,
      String? image,
      String? created_at,
      String? updated_at,
      String? deleted_at,
      ProductModel? product,
      List<FilesModel>? files});

  @override
  $ProductModelCopyWith<$Res>? get product;
}

/// @nodoc
class __$$_CategoryAndProductsModelCopyWithImpl<$Res>
    extends _$CategoryAndProductsModelCopyWithImpl<$Res,
        _$_CategoryAndProductsModel>
    implements _$$_CategoryAndProductsModelCopyWith<$Res> {
  __$$_CategoryAndProductsModelCopyWithImpl(_$_CategoryAndProductsModel _value,
      $Res Function(_$_CategoryAndProductsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? supplier_id = freezed,
    Object? product_id = freezed,
    Object? price = freezed,
    Object? quantity = freezed,
    Object? is_published = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? deleted_at = freezed,
    Object? product = freezed,
    Object? files = freezed,
  }) {
    return _then(_$_CategoryAndProductsModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      supplier_id: freezed == supplier_id
          ? _value.supplier_id
          : supplier_id // ignore: cast_nullable_to_non_nullable
              as int?,
      product_id: freezed == product_id
          ? _value.product_id
          : product_id // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      is_published: freezed == is_published
          ? _value.is_published
          : is_published // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
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
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel?,
      files: freezed == files
          ? _value._files
          : files // ignore: cast_nullable_to_non_nullable
              as List<FilesModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CategoryAndProductsModel extends _CategoryAndProductsModel {
  const _$_CategoryAndProductsModel(
      {this.id,
      this.supplier_id,
      this.product_id,
      this.price,
      this.quantity,
      this.is_published,
      this.name,
      this.image,
      this.created_at,
      this.updated_at,
      this.deleted_at,
      this.product,
      final List<FilesModel>? files})
      : _files = files,
        super._();

  factory _$_CategoryAndProductsModel.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryAndProductsModelFromJson(json);

  @override
  final int? id;
  @override
  final int? supplier_id;
  @override
  final int? product_id;
  @override
  final num? price;
  @override
  final int? quantity;
  @override
  final int? is_published;
  @override
  final String? name;
  @override
  final String? image;
  @override
  final String? created_at;
  @override
  final String? updated_at;
  @override
  final String? deleted_at;
  @override
  final ProductModel? product;
  final List<FilesModel>? _files;
  @override
  List<FilesModel>? get files {
    final value = _files;
    if (value == null) return null;
    if (_files is EqualUnmodifiableListView) return _files;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CategoryAndProductsModel(id: $id, supplier_id: $supplier_id, product_id: $product_id, price: $price, quantity: $quantity, is_published: $is_published, name: $name, image: $image, created_at: $created_at, updated_at: $updated_at, deleted_at: $deleted_at, product: $product, files: $files)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryAndProductsModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.supplier_id, supplier_id) ||
                other.supplier_id == supplier_id) &&
            (identical(other.product_id, product_id) ||
                other.product_id == product_id) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.is_published, is_published) ||
                other.is_published == is_published) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at) &&
            (identical(other.deleted_at, deleted_at) ||
                other.deleted_at == deleted_at) &&
            (identical(other.product, product) || other.product == product) &&
            const DeepCollectionEquality().equals(other._files, _files));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      supplier_id,
      product_id,
      price,
      quantity,
      is_published,
      name,
      image,
      created_at,
      updated_at,
      deleted_at,
      product,
      const DeepCollectionEquality().hash(_files));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoryAndProductsModelCopyWith<_$_CategoryAndProductsModel>
      get copyWith => __$$_CategoryAndProductsModelCopyWithImpl<
          _$_CategoryAndProductsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryAndProductsModelToJson(
      this,
    );
  }
}

abstract class _CategoryAndProductsModel extends CategoryAndProductsModel {
  const factory _CategoryAndProductsModel(
      {final int? id,
      final int? supplier_id,
      final int? product_id,
      final num? price,
      final int? quantity,
      final int? is_published,
      final String? name,
      final String? image,
      final String? created_at,
      final String? updated_at,
      final String? deleted_at,
      final ProductModel? product,
      final List<FilesModel>? files}) = _$_CategoryAndProductsModel;
  const _CategoryAndProductsModel._() : super._();

  factory _CategoryAndProductsModel.fromJson(Map<String, dynamic> json) =
      _$_CategoryAndProductsModel.fromJson;

  @override
  int? get id;
  @override
  int? get supplier_id;
  @override
  int? get product_id;
  @override
  num? get price;
  @override
  int? get quantity;
  @override
  int? get is_published;
  @override
  String? get name;
  @override
  String? get image;
  @override
  String? get created_at;
  @override
  String? get updated_at;
  @override
  String? get deleted_at;
  @override
  ProductModel? get product;
  @override
  List<FilesModel>? get files;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryAndProductsModelCopyWith<_$_CategoryAndProductsModel>
      get copyWith => throw _privateConstructorUsedError;
}

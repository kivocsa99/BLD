// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'productmodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) {
  return _ProductModel.fromJson(json);
}

/// @nodoc
mixin _$ProductModel {
  int? get id => throw _privateConstructorUsedError;
  int? get category_id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get name_ar => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get description_ar => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get brand => throw _privateConstructorUsedError;
  String? get unit => throw _privateConstructorUsedError;
  String? get number => throw _privateConstructorUsedError;
  int? get active => throw _privateConstructorUsedError;
  String? get created_at => throw _privateConstructorUsedError;
  String? get updated_at => throw _privateConstructorUsedError;
  String? get deleted_at => throw _privateConstructorUsedError;
  CategoryModel? get category => throw _privateConstructorUsedError;
  List<FilesModel>? get files => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductModelCopyWith<ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductModelCopyWith<$Res> {
  factory $ProductModelCopyWith(
          ProductModel value, $Res Function(ProductModel) then) =
      _$ProductModelCopyWithImpl<$Res, ProductModel>;
  @useResult
  $Res call(
      {int? id,
      int? category_id,
      String? name,
      String? name_ar,
      String? description,
      String? description_ar,
      String? image,
      String? brand,
      String? unit,
      String? number,
      int? active,
      String? created_at,
      String? updated_at,
      String? deleted_at,
      CategoryModel? category,
      List<FilesModel>? files});

  $CategoryModelCopyWith<$Res>? get category;
}

/// @nodoc
class _$ProductModelCopyWithImpl<$Res, $Val extends ProductModel>
    implements $ProductModelCopyWith<$Res> {
  _$ProductModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? category_id = freezed,
    Object? name = freezed,
    Object? name_ar = freezed,
    Object? description = freezed,
    Object? description_ar = freezed,
    Object? image = freezed,
    Object? brand = freezed,
    Object? unit = freezed,
    Object? number = freezed,
    Object? active = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? deleted_at = freezed,
    Object? category = freezed,
    Object? files = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      category_id: freezed == category_id
          ? _value.category_id
          : category_id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      name_ar: freezed == name_ar
          ? _value.name_ar
          : name_ar // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      description_ar: freezed == description_ar
          ? _value.description_ar
          : description_ar // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
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
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
      files: freezed == files
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as List<FilesModel>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryModelCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $CategoryModelCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProductModelCopyWith<$Res>
    implements $ProductModelCopyWith<$Res> {
  factory _$$_ProductModelCopyWith(
          _$_ProductModel value, $Res Function(_$_ProductModel) then) =
      __$$_ProductModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? category_id,
      String? name,
      String? name_ar,
      String? description,
      String? description_ar,
      String? image,
      String? brand,
      String? unit,
      String? number,
      int? active,
      String? created_at,
      String? updated_at,
      String? deleted_at,
      CategoryModel? category,
      List<FilesModel>? files});

  @override
  $CategoryModelCopyWith<$Res>? get category;
}

/// @nodoc
class __$$_ProductModelCopyWithImpl<$Res>
    extends _$ProductModelCopyWithImpl<$Res, _$_ProductModel>
    implements _$$_ProductModelCopyWith<$Res> {
  __$$_ProductModelCopyWithImpl(
      _$_ProductModel _value, $Res Function(_$_ProductModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? category_id = freezed,
    Object? name = freezed,
    Object? name_ar = freezed,
    Object? description = freezed,
    Object? description_ar = freezed,
    Object? image = freezed,
    Object? brand = freezed,
    Object? unit = freezed,
    Object? number = freezed,
    Object? active = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? deleted_at = freezed,
    Object? category = freezed,
    Object? files = freezed,
  }) {
    return _then(_$_ProductModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      category_id: freezed == category_id
          ? _value.category_id
          : category_id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      name_ar: freezed == name_ar
          ? _value.name_ar
          : name_ar // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      description_ar: freezed == description_ar
          ? _value.description_ar
          : description_ar // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
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
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
      files: freezed == files
          ? _value._files
          : files // ignore: cast_nullable_to_non_nullable
              as List<FilesModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductModel extends _ProductModel {
  const _$_ProductModel(
      {this.id,
      this.category_id,
      this.name,
      this.name_ar,
      this.description,
      this.description_ar,
      this.image,
      this.brand,
      this.unit,
      this.number,
      this.active,
      this.created_at,
      this.updated_at,
      this.deleted_at,
      this.category,
      final List<FilesModel>? files})
      : _files = files,
        super._();

  factory _$_ProductModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProductModelFromJson(json);

  @override
  final int? id;
  @override
  final int? category_id;
  @override
  final String? name;
  @override
  final String? name_ar;
  @override
  final String? description;
  @override
  final String? description_ar;
  @override
  final String? image;
  @override
  final String? brand;
  @override
  final String? unit;
  @override
  final String? number;
  @override
  final int? active;
  @override
  final String? created_at;
  @override
  final String? updated_at;
  @override
  final String? deleted_at;
  @override
  final CategoryModel? category;
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
    return 'ProductModel(id: $id, category_id: $category_id, name: $name, name_ar: $name_ar, description: $description, description_ar: $description_ar, image: $image, brand: $brand, unit: $unit, number: $number, active: $active, created_at: $created_at, updated_at: $updated_at, deleted_at: $deleted_at, category: $category, files: $files)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.category_id, category_id) ||
                other.category_id == category_id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.name_ar, name_ar) || other.name_ar == name_ar) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.description_ar, description_ar) ||
                other.description_ar == description_ar) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at) &&
            (identical(other.deleted_at, deleted_at) ||
                other.deleted_at == deleted_at) &&
            (identical(other.category, category) ||
                other.category == category) &&
            const DeepCollectionEquality().equals(other._files, _files));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      category_id,
      name,
      name_ar,
      description,
      description_ar,
      image,
      brand,
      unit,
      number,
      active,
      created_at,
      updated_at,
      deleted_at,
      category,
      const DeepCollectionEquality().hash(_files));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductModelCopyWith<_$_ProductModel> get copyWith =>
      __$$_ProductModelCopyWithImpl<_$_ProductModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductModelToJson(
      this,
    );
  }
}

abstract class _ProductModel extends ProductModel {
  const factory _ProductModel(
      {final int? id,
      final int? category_id,
      final String? name,
      final String? name_ar,
      final String? description,
      final String? description_ar,
      final String? image,
      final String? brand,
      final String? unit,
      final String? number,
      final int? active,
      final String? created_at,
      final String? updated_at,
      final String? deleted_at,
      final CategoryModel? category,
      final List<FilesModel>? files}) = _$_ProductModel;
  const _ProductModel._() : super._();

  factory _ProductModel.fromJson(Map<String, dynamic> json) =
      _$_ProductModel.fromJson;

  @override
  int? get id;
  @override
  int? get category_id;
  @override
  String? get name;
  @override
  String? get name_ar;
  @override
  String? get description;
  @override
  String? get description_ar;
  @override
  String? get image;
  @override
  String? get brand;
  @override
  String? get unit;
  @override
  String? get number;
  @override
  int? get active;
  @override
  String? get created_at;
  @override
  String? get updated_at;
  @override
  String? get deleted_at;
  @override
  CategoryModel? get category;
  @override
  List<FilesModel>? get files;
  @override
  @JsonKey(ignore: true)
  _$$_ProductModelCopyWith<_$_ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'searchpagemodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchPageModel _$SearchPageModelFromJson(Map<String, dynamic> json) {
  return _SearchPageModel.fromJson(json);
}

/// @nodoc
mixin _$SearchPageModel {
  List<CategoryModel>? get Categories => throw _privateConstructorUsedError;
  List<AdsModel>? get Ads => throw _privateConstructorUsedError;
  List<CategoryAndProductsModel>? get RandomProducts =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchPageModelCopyWith<SearchPageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchPageModelCopyWith<$Res> {
  factory $SearchPageModelCopyWith(
          SearchPageModel value, $Res Function(SearchPageModel) then) =
      _$SearchPageModelCopyWithImpl<$Res, SearchPageModel>;
  @useResult
  $Res call(
      {List<CategoryModel>? Categories,
      List<AdsModel>? Ads,
      List<CategoryAndProductsModel>? RandomProducts});
}

/// @nodoc
class _$SearchPageModelCopyWithImpl<$Res, $Val extends SearchPageModel>
    implements $SearchPageModelCopyWith<$Res> {
  _$SearchPageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Categories = freezed,
    Object? Ads = freezed,
    Object? RandomProducts = freezed,
  }) {
    return _then(_value.copyWith(
      Categories: freezed == Categories
          ? _value.Categories
          : Categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>?,
      Ads: freezed == Ads
          ? _value.Ads
          : Ads // ignore: cast_nullable_to_non_nullable
              as List<AdsModel>?,
      RandomProducts: freezed == RandomProducts
          ? _value.RandomProducts
          : RandomProducts // ignore: cast_nullable_to_non_nullable
              as List<CategoryAndProductsModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchPageModelCopyWith<$Res>
    implements $SearchPageModelCopyWith<$Res> {
  factory _$$_SearchPageModelCopyWith(
          _$_SearchPageModel value, $Res Function(_$_SearchPageModel) then) =
      __$$_SearchPageModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CategoryModel>? Categories,
      List<AdsModel>? Ads,
      List<CategoryAndProductsModel>? RandomProducts});
}

/// @nodoc
class __$$_SearchPageModelCopyWithImpl<$Res>
    extends _$SearchPageModelCopyWithImpl<$Res, _$_SearchPageModel>
    implements _$$_SearchPageModelCopyWith<$Res> {
  __$$_SearchPageModelCopyWithImpl(
      _$_SearchPageModel _value, $Res Function(_$_SearchPageModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Categories = freezed,
    Object? Ads = freezed,
    Object? RandomProducts = freezed,
  }) {
    return _then(_$_SearchPageModel(
      Categories: freezed == Categories
          ? _value._Categories
          : Categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>?,
      Ads: freezed == Ads
          ? _value._Ads
          : Ads // ignore: cast_nullable_to_non_nullable
              as List<AdsModel>?,
      RandomProducts: freezed == RandomProducts
          ? _value._RandomProducts
          : RandomProducts // ignore: cast_nullable_to_non_nullable
              as List<CategoryAndProductsModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchPageModel extends _SearchPageModel {
  const _$_SearchPageModel(
      {final List<CategoryModel>? Categories,
      final List<AdsModel>? Ads,
      final List<CategoryAndProductsModel>? RandomProducts})
      : _Categories = Categories,
        _Ads = Ads,
        _RandomProducts = RandomProducts,
        super._();

  factory _$_SearchPageModel.fromJson(Map<String, dynamic> json) =>
      _$$_SearchPageModelFromJson(json);

  final List<CategoryModel>? _Categories;
  @override
  List<CategoryModel>? get Categories {
    final value = _Categories;
    if (value == null) return null;
    if (_Categories is EqualUnmodifiableListView) return _Categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<AdsModel>? _Ads;
  @override
  List<AdsModel>? get Ads {
    final value = _Ads;
    if (value == null) return null;
    if (_Ads is EqualUnmodifiableListView) return _Ads;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<CategoryAndProductsModel>? _RandomProducts;
  @override
  List<CategoryAndProductsModel>? get RandomProducts {
    final value = _RandomProducts;
    if (value == null) return null;
    if (_RandomProducts is EqualUnmodifiableListView) return _RandomProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SearchPageModel(Categories: $Categories, Ads: $Ads, RandomProducts: $RandomProducts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchPageModel &&
            const DeepCollectionEquality()
                .equals(other._Categories, _Categories) &&
            const DeepCollectionEquality().equals(other._Ads, _Ads) &&
            const DeepCollectionEquality()
                .equals(other._RandomProducts, _RandomProducts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_Categories),
      const DeepCollectionEquality().hash(_Ads),
      const DeepCollectionEquality().hash(_RandomProducts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchPageModelCopyWith<_$_SearchPageModel> get copyWith =>
      __$$_SearchPageModelCopyWithImpl<_$_SearchPageModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchPageModelToJson(
      this,
    );
  }
}

abstract class _SearchPageModel extends SearchPageModel {
  const factory _SearchPageModel(
          {final List<CategoryModel>? Categories,
          final List<AdsModel>? Ads,
          final List<CategoryAndProductsModel>? RandomProducts}) =
      _$_SearchPageModel;
  const _SearchPageModel._() : super._();

  factory _SearchPageModel.fromJson(Map<String, dynamic> json) =
      _$_SearchPageModel.fromJson;

  @override
  List<CategoryModel>? get Categories;
  @override
  List<AdsModel>? get Ads;
  @override
  List<CategoryAndProductsModel>? get RandomProducts;
  @override
  @JsonKey(ignore: true)
  _$$_SearchPageModelCopyWith<_$_SearchPageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

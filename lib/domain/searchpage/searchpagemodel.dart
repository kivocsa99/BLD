// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:bld/domain/ads/model/adsmodel.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../category/model/categorymodel.dart';
import '../categoryandproductsmodel/categoryandproductsmodel.dart';


part 'searchpagemodel.freezed.dart';
part 'searchpagemodel.g.dart';

@freezed
class SearchPageModel with _$SearchPageModel {
  const factory SearchPageModel({
    List<CategoryModel>?Categories,
    List<AdsModel>?Ads,
    List<CategoryAndProductsModel>?RandomProducts,

  }) = _SearchPageModel;
  const SearchPageModel._();
  factory SearchPageModel.fromJson(Map<String, dynamic> json) =>
      _$SearchPageModelFromJson(json);
}

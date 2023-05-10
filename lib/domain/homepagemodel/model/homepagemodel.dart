// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:bld/domain/ads/model/adsmodel.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../categoryandproductsmodel/categoryandproductsmodel.dart';
import '../../suppliers/model/suppliersmodel.dart';
import '../../user/model/usermodel.dart';
part 'homepagemodel.freezed.dart';
part 'homepagemodel.g.dart';

@freezed
class HomePageModel with _$HomePageModel {
  const factory HomePageModel({
    String? AZSVR,
    UserModel? User,
    int? UserOrdersCount,
    int? UserProjectsCount,
    List<AdsModel>? Ads,
    List<CategoryAndProductsModel>? CategoryAndProducts,
    List<SuppliersModel>? RandomSuppliers,
  }) = _HomePageModel;
  const HomePageModel._();
  factory HomePageModel.fromJson(Map<String, dynamic> json) =>
      _$HomePageModelFromJson(json);
}

// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

import '../products/model/productmodel.dart';

part 'categoryandproductsmodel.freezed.dart';
part 'categoryandproductsmodel.g.dart';

@freezed
class CategoryAndProductsModel with _$CategoryAndProductsModel {
  const factory CategoryAndProductsModel({
    int? id,
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
  }) = _CategoryAndProductsModel;
  const CategoryAndProductsModel._();
  factory CategoryAndProductsModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryAndProductsModelFromJson(json);
}

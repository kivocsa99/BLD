// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:bld/domain/categoryandproductsmodel/categoryandproductsmodel.dart';
import 'package:bld/domain/suppliers/model/suppliersmodel.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'cartmodel.freezed.dart';
part 'cartmodel.g.dart';

@freezed
class CartModel with _$CartModel {
  const factory CartModel({
    int? id,
    int? user_id,
    int? supplier_id,
    int? supplier_product_id,
    int? quantity,
    String? created_at,
    String? updated_at,
    String? deleted_at,
    SuppliersModel? supplier,
    CategoryAndProductsModel? supplier_product,
  }) = _CartModel;
  const CartModel._();
  factory CartModel.fromJson(Map<String, dynamic> json) =>
      _$CartModelFromJson(json);
}

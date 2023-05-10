// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../category/model/categorymodel.dart';
import '../../files/model/filesmodel.dart';

part 'productmodel.freezed.dart';
part 'productmodel.g.dart';

@freezed
class ProductModel with _$ProductModel {
  const factory ProductModel({
    int? id,
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
    List<FilesModel>? files,
  }) = _ProductModel;
  const ProductModel._();
  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}

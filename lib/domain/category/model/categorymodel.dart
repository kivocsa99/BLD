// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

part 'categorymodel.freezed.dart';
part 'categorymodel.g.dart';

@freezed
class CategoryModel with _$CategoryModel {
  const factory CategoryModel({
    int? id,
    String? name,
    String? name_ar,
    String? image,
    String? created_at,
    String? updated_at,
    String? deleted_at,
  }) = _CategoryModel;
  const CategoryModel._();
  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
}

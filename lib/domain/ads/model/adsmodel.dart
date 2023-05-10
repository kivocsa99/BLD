// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

part 'adsmodel.freezed.dart';
part 'adsmodel.g.dart';

@freezed
class AdsModel with _$AdsModel {
  const factory AdsModel({
    int? id,
    int? cms_section_id,
    String? supplier_id,
    int? is_published,
    String? name,
    String? image,
    String? created_at,
    String? updated_at,
    String? deleted_at,
  }) = _AdsModel;
  const AdsModel._();
  factory AdsModel.fromJson(Map<String, dynamic> json) =>
      _$AdsModelFromJson(json);
}

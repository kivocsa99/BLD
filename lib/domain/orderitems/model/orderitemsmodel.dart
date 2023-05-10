// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';
part 'orderitemsmodel.freezed.dart';
part 'orderitemsmodel.g.dart';

@freezed
class OrderItemsModel with _$OrderItemsModel {
  const factory OrderItemsModel({
    int? id,
    String? belongable_type,
    int? belongable_id,
    int? user_id,
    String? flag,
    String? title,
    String? name,
    String? created_at,
    String? updated_at,
    String? deleted_at,
  }) = _OrderItemsModel;
  const OrderItemsModel._();
  factory OrderItemsModel.fromJson(Map<String, dynamic> json) =>
      _$OrderItemsModelFromJson(json);
}

// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:bld/domain/deliverytime/contracts/deliverytimemodel.dart';
import 'package:bld/domain/status/contracts/statusmodel.dart';
import 'package:bld/domain/suppliers/model/suppliersmodel.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../files/model/filesmodel.dart';
import '../../orderitems/model/orderitemsmodel.dart';
part 'ordermodel.freezed.dart';
part 'ordermodel.g.dart';

@freezed
class OrderModel with _$OrderModel {
  const factory OrderModel({
    int? id,
    int? customer_id,
    String? supplier_id,
    int? project_id,
    int? delivery_time_id,
    int? order_status_id,
    int? payment_id,
    String? payment_method,
    num? total,
    String? notes,
    String? location,
    List<FilesModel>? files,
    List<OrderItemsModel>? order_items,
    DeliveryTimeModel? delivery_time,
    SuppliersModel? supplier,
    StatusModel? status,
    String? created_at,
    String? updated_at,
    String? deleted_at,
  }) = _OrderModel;
  const OrderModel._();
  factory OrderModel.fromJson(Map<String, dynamic> json) =>
      _$OrderModelFromJson(json);
}

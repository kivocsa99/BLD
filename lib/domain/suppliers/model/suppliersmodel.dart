// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../customordersmodel/model/customerordermodel.dart';
import '../../projects/model/userprojectsmodel.dart';
part 'suppliersmodel.freezed.dart';
part 'suppliersmodel.g.dart';

@freezed
class SuppliersModel with _$SuppliersModel {
  const factory SuppliersModel({
    int? id,
    String? name,
    String? name_ar,
    String? phone,
    String? email,
    String? email_verified_at,
    String? belongable_type,
    int? belongable_id,
    int? active,
    String? language,
    String? image,
    String? cover_image,
    String? location,
    String? commission_rate,
    String? created_at,
    String? updated_at,
    String? deleted_at,
    List<UserProjectsModel>? projects,
    List<CustomerOrderModel>? customer_orders,
    int? UserOrdersCount,
    int? UserProjectsCount,
    String? fcm_token,
  }) = _SuppliersModel;
  const SuppliersModel._();
  factory SuppliersModel.fromJson(Map<String, dynamic> json) =>
      _$SuppliersModelFromJson(json);
}

// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../customordersmodel/model/customerordermodel.dart';
import '../../projects/model/userprojectsmodel.dart';
part 'usermodel.freezed.dart';
part 'usermodel.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
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
    int? countryid,
    String? created_at,
    String? updated_at,
    String? deleted_at,
    List<UserProjectsModel>? projects,
    List<CustomerOrderModel>? customer_orders,
    String? fcm_token,
  }) = _UserModel;
  const UserModel._();
  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

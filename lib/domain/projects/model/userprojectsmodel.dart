// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../categoryandproductsmodel/categoryandproductsmodel.dart';
import '../../files/model/filesmodel.dart';
import '../../orderitems/model/orderitemsmodel.dart';
part 'userprojectsmodel.freezed.dart';
part 'userprojectsmodel.g.dart';

@freezed
class UserProjectsModel with _$UserProjectsModel {
  const factory UserProjectsModel({
    int? id,
    int? user_id,
    String? name,
    String? description,
    String? area,
    String? location,
    List<FilesModel>? files,
    List<CategoryAndProductsModel>? order_items,
    String? created_at,
    String? updated_at,
    String? deleted_at,
    String? fcm_token,
  }) = _UserProjectsModel;
  const UserProjectsModel._();
  factory UserProjectsModel.fromJson(Map<String, dynamic> json) =>
      _$UserProjectsModelFromJson(json);
}

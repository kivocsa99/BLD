// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../files/model/filesmodel.dart';
import '../../status/contracts/statusmodel.dart';

part 'consultationmodel.freezed.dart';
part 'consultationmodel.g.dart';

@freezed
class ConsultationModel with _$ConsultationModel {
  const factory ConsultationModel({
    int? id,
    int? user_id,
    String? name,
    String? text,
    int? consultancy_request_status_id,
    int? payment_id,
    String? created_at,
    String? updated_at,
    String? deleted_at,
    StatusModel?status,
    List<FilesModel>?files,
  }) = _ConsultationModel;
  const ConsultationModel._();
  factory ConsultationModel.fromJson(Map<String, dynamic> json) =>
      _$ConsultationModelFromJson(json);
}

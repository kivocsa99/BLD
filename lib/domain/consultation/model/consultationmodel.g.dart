// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consultationmodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ConsultationModel _$$_ConsultationModelFromJson(Map<String, dynamic> json) =>
    _$_ConsultationModel(
      id: json['id'] as int?,
      user_id: json['user_id'] as int?,
      name: json['name'] as String?,
      text: json['text'] as String?,
      consultancy_request_status_id:
          json['consultancy_request_status_id'] as int?,
      payment_id: json['payment_id'] as int?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      deleted_at: json['deleted_at'] as String?,
      status: json['status'] == null
          ? null
          : StatusModel.fromJson(json['status'] as Map<String, dynamic>),
      files: (json['files'] as List<dynamic>?)
          ?.map((e) => FilesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ConsultationModelToJson(
        _$_ConsultationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.user_id,
      'name': instance.name,
      'text': instance.text,
      'consultancy_request_status_id': instance.consultancy_request_status_id,
      'payment_id': instance.payment_id,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'deleted_at': instance.deleted_at,
      'status': instance.status,
      'files': instance.files,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'userprojectsmodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserProjectsModel _$$_UserProjectsModelFromJson(Map<String, dynamic> json) =>
    _$_UserProjectsModel(
      id: json['id'] as int?,
      user_id: json['user_id'] as int?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      area: json['area'] as String?,
      location: json['location'] as String?,
      files: (json['files'] as List<dynamic>?)
          ?.map((e) => FilesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      order_items: (json['order_items'] as List<dynamic>?)
          ?.map((e) => OrderItemsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      deleted_at: json['deleted_at'] as String?,
      fcm_token: json['fcm_token'] as String?,
    );

Map<String, dynamic> _$$_UserProjectsModelToJson(
        _$_UserProjectsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.user_id,
      'name': instance.name,
      'description': instance.description,
      'area': instance.area,
      'location': instance.location,
      'files': instance.files,
      'order_items': instance.order_items,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'deleted_at': instance.deleted_at,
      'fcm_token': instance.fcm_token,
    };

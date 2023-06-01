// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usermodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      name_ar: json['name_ar'] as String?,
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      email_verified_at: json['email_verified_at'] as String?,
      belongable_type: json['belongable_type'] as String?,
      belongable_id: json['belongable_id'] as int?,
      active: json['active'] as int?,
      language: json['language'] as String?,
      image: json['image'] as String?,
      cover_image: json['cover_image'] as String?,
      location: json['location'] as String?,
      countryid: json['countryid'] as int?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      deleted_at: json['deleted_at'] as String?,
      projects: (json['projects'] as List<dynamic>?)
          ?.map((e) => UserProjectsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      customer_orders: (json['customer_orders'] as List<dynamic>?)
          ?.map((e) => CustomerOrderModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      fcm_token: json['fcm_token'] as String?,
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'name_ar': instance.name_ar,
      'phone': instance.phone,
      'email': instance.email,
      'email_verified_at': instance.email_verified_at,
      'belongable_type': instance.belongable_type,
      'belongable_id': instance.belongable_id,
      'active': instance.active,
      'language': instance.language,
      'image': instance.image,
      'cover_image': instance.cover_image,
      'location': instance.location,
      'countryid': instance.countryid,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'deleted_at': instance.deleted_at,
      'projects': instance.projects,
      'customer_orders': instance.customer_orders,
      'fcm_token': instance.fcm_token,
    };

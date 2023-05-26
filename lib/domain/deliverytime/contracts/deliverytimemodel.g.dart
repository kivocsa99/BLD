// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deliverytimemodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DeliveryTimeModel _$$_DeliveryTimeModelFromJson(Map<String, dynamic> json) =>
    _$_DeliveryTimeModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      name_ar: json['name_ar'] as String?,
      active: json['active'] as int?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      deleted_at: json['deleted_at'] as String?,
    );

Map<String, dynamic> _$$_DeliveryTimeModelToJson(
        _$_DeliveryTimeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'name_ar': instance.name_ar,
      'active': instance.active,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'deleted_at': instance.deleted_at,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'adsmodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AdsModel _$$_AdsModelFromJson(Map<String, dynamic> json) => _$_AdsModel(
      id: json['id'] as int?,
      cms_section_id: json['cms_section_id'] as int?,
      supplier_id: json['supplier_id'] as String?,
      is_published: json['is_published'] as int?,
      name: json['name'] as String?,
      image: json['image'] as String?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      deleted_at: json['deleted_at'] as String?,
    );

Map<String, dynamic> _$$_AdsModelToJson(_$_AdsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cms_section_id': instance.cms_section_id,
      'supplier_id': instance.supplier_id,
      'is_published': instance.is_published,
      'name': instance.name,
      'image': instance.image,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'deleted_at': instance.deleted_at,
    };

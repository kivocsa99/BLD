// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'productmodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductModel _$$_ProductModelFromJson(Map<String, dynamic> json) =>
    _$_ProductModel(
      id: json['id'] as int?,
      category_id: json['category_id'] as int?,
      name: json['name'] as String?,
      name_ar: json['name_ar'] as String?,
      description: json['description'] as String?,
      description_ar: json['description_ar'] as String?,
      image: json['image'] as String?,
      brand: json['brand'] as String?,
      unit: json['unit'] as String?,
      number: json['number'] as String?,
      active: json['active'] as int?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      deleted_at: json['deleted_at'] as String?,
      category: json['category'] == null
          ? null
          : CategoryModel.fromJson(json['category'] as Map<String, dynamic>),
      files: (json['files'] as List<dynamic>?)
          ?.map((e) => FilesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ProductModelToJson(_$_ProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'category_id': instance.category_id,
      'name': instance.name,
      'name_ar': instance.name_ar,
      'description': instance.description,
      'description_ar': instance.description_ar,
      'image': instance.image,
      'brand': instance.brand,
      'unit': instance.unit,
      'number': instance.number,
      'active': instance.active,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'deleted_at': instance.deleted_at,
      'category': instance.category,
      'files': instance.files,
    };

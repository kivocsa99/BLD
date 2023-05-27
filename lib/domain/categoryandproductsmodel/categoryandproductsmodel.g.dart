// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categoryandproductsmodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CategoryAndProductsModel _$$_CategoryAndProductsModelFromJson(
        Map<String, dynamic> json) =>
    _$_CategoryAndProductsModel(
      id: json['id'] as int?,
      supplier_id: json['supplier_id'] as int?,
      product_id: json['product_id'] as int?,
      price: json['price'] as num?,
      quantity: json['quantity'] as int?,
      is_published: json['is_published'] as int?,
      name: json['name'] as String?,
      image: json['image'] as String?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      deleted_at: json['deleted_at'] as String?,
      product: json['product'] == null
          ? null
          : ProductModel.fromJson(json['product'] as Map<String, dynamic>),
      supplier: json['supplier'] == null
          ? null
          : SuppliersModel.fromJson(json['supplier'] as Map<String, dynamic>),
      files: (json['files'] as List<dynamic>?)
          ?.map((e) => FilesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CategoryAndProductsModelToJson(
        _$_CategoryAndProductsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'supplier_id': instance.supplier_id,
      'product_id': instance.product_id,
      'price': instance.price,
      'quantity': instance.quantity,
      'is_published': instance.is_published,
      'name': instance.name,
      'image': instance.image,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'deleted_at': instance.deleted_at,
      'product': instance.product,
      'supplier': instance.supplier,
      'files': instance.files,
    };

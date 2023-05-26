// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cartmodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CartModel _$$_CartModelFromJson(Map<String, dynamic> json) => _$_CartModel(
      id: json['id'] as int?,
      user_id: json['user_id'] as int?,
      supplier_id: json['supplier_id'] as int?,
      supplier_product_id: json['supplier_product_id'] as int?,
      quantity: json['quantity'] as int?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      deleted_at: json['deleted_at'] as String?,
      supplier: json['supplier'] == null
          ? null
          : SuppliersModel.fromJson(json['supplier'] as Map<String, dynamic>),
      supplier_product: json['supplier_product'] == null
          ? null
          : CategoryAndProductsModel.fromJson(
              json['supplier_product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CartModelToJson(_$_CartModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.user_id,
      'supplier_id': instance.supplier_id,
      'supplier_product_id': instance.supplier_product_id,
      'quantity': instance.quantity,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'deleted_at': instance.deleted_at,
      'supplier': instance.supplier,
      'supplier_product': instance.supplier_product,
    };

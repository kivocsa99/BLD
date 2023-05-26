// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ordermodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderModel _$$_OrderModelFromJson(Map<String, dynamic> json) =>
    _$_OrderModel(
      id: json['id'] as int?,
      customer_id: json['customer_id'] as int?,
      supplier_id: json['supplier_id'] as String?,
      project_id: json['project_id'] as int?,
      delivery_time_id: json['delivery_time_id'] as int?,
      order_status_id: json['order_status_id'] as int?,
      payment_id: json['payment_id'] as int?,
      payment_method: json['payment_method'] as String?,
      total: json['total'] as num?,
      notes: json['notes'] as String?,
      location: json['location'] as String?,
      files: (json['files'] as List<dynamic>?)
          ?.map((e) => FilesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      order_items: (json['order_items'] as List<dynamic>?)
          ?.map((e) => OrderItemsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      delivery_time: json['delivery_time'] == null
          ? null
          : DeliveryTimeModel.fromJson(
              json['delivery_time'] as Map<String, dynamic>),
      supplier: json['supplier'] == null
          ? null
          : SuppliersModel.fromJson(json['supplier'] as Map<String, dynamic>),
      status: json['status'] == null
          ? null
          : StatusModel.fromJson(json['status'] as Map<String, dynamic>),
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      deleted_at: json['deleted_at'] as String?,
    );

Map<String, dynamic> _$$_OrderModelToJson(_$_OrderModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'customer_id': instance.customer_id,
      'supplier_id': instance.supplier_id,
      'project_id': instance.project_id,
      'delivery_time_id': instance.delivery_time_id,
      'order_status_id': instance.order_status_id,
      'payment_id': instance.payment_id,
      'payment_method': instance.payment_method,
      'total': instance.total,
      'notes': instance.notes,
      'location': instance.location,
      'files': instance.files,
      'order_items': instance.order_items,
      'delivery_time': instance.delivery_time,
      'supplier': instance.supplier,
      'status': instance.status,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'deleted_at': instance.deleted_at,
    };

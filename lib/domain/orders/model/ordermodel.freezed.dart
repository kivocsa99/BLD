// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ordermodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderModel _$OrderModelFromJson(Map<String, dynamic> json) {
  return _OrderModel.fromJson(json);
}

/// @nodoc
mixin _$OrderModel {
  int? get id => throw _privateConstructorUsedError;
  int? get customer_id => throw _privateConstructorUsedError;
  String? get supplier_id => throw _privateConstructorUsedError;
  int? get project_id => throw _privateConstructorUsedError;
  int? get delivery_time_id => throw _privateConstructorUsedError;
  int? get order_status_id => throw _privateConstructorUsedError;
  int? get payment_id => throw _privateConstructorUsedError;
  String? get payment_method => throw _privateConstructorUsedError;
  num? get total => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  List<FilesModel>? get files => throw _privateConstructorUsedError;
  List<OrderItemsModel>? get order_items => throw _privateConstructorUsedError;
  DeliveryTimeModel? get delivery_time => throw _privateConstructorUsedError;
  SuppliersModel? get supplier => throw _privateConstructorUsedError;
  StatusModel? get status => throw _privateConstructorUsedError;
  String? get created_at => throw _privateConstructorUsedError;
  String? get updated_at => throw _privateConstructorUsedError;
  String? get deleted_at => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderModelCopyWith<OrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderModelCopyWith<$Res> {
  factory $OrderModelCopyWith(
          OrderModel value, $Res Function(OrderModel) then) =
      _$OrderModelCopyWithImpl<$Res, OrderModel>;
  @useResult
  $Res call(
      {int? id,
      int? customer_id,
      String? supplier_id,
      int? project_id,
      int? delivery_time_id,
      int? order_status_id,
      int? payment_id,
      String? payment_method,
      num? total,
      String? notes,
      String? location,
      List<FilesModel>? files,
      List<OrderItemsModel>? order_items,
      DeliveryTimeModel? delivery_time,
      SuppliersModel? supplier,
      StatusModel? status,
      String? created_at,
      String? updated_at,
      String? deleted_at});

  $DeliveryTimeModelCopyWith<$Res>? get delivery_time;
  $SuppliersModelCopyWith<$Res>? get supplier;
  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class _$OrderModelCopyWithImpl<$Res, $Val extends OrderModel>
    implements $OrderModelCopyWith<$Res> {
  _$OrderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? customer_id = freezed,
    Object? supplier_id = freezed,
    Object? project_id = freezed,
    Object? delivery_time_id = freezed,
    Object? order_status_id = freezed,
    Object? payment_id = freezed,
    Object? payment_method = freezed,
    Object? total = freezed,
    Object? notes = freezed,
    Object? location = freezed,
    Object? files = freezed,
    Object? order_items = freezed,
    Object? delivery_time = freezed,
    Object? supplier = freezed,
    Object? status = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? deleted_at = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      customer_id: freezed == customer_id
          ? _value.customer_id
          : customer_id // ignore: cast_nullable_to_non_nullable
              as int?,
      supplier_id: freezed == supplier_id
          ? _value.supplier_id
          : supplier_id // ignore: cast_nullable_to_non_nullable
              as String?,
      project_id: freezed == project_id
          ? _value.project_id
          : project_id // ignore: cast_nullable_to_non_nullable
              as int?,
      delivery_time_id: freezed == delivery_time_id
          ? _value.delivery_time_id
          : delivery_time_id // ignore: cast_nullable_to_non_nullable
              as int?,
      order_status_id: freezed == order_status_id
          ? _value.order_status_id
          : order_status_id // ignore: cast_nullable_to_non_nullable
              as int?,
      payment_id: freezed == payment_id
          ? _value.payment_id
          : payment_id // ignore: cast_nullable_to_non_nullable
              as int?,
      payment_method: freezed == payment_method
          ? _value.payment_method
          : payment_method // ignore: cast_nullable_to_non_nullable
              as String?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as num?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      files: freezed == files
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as List<FilesModel>?,
      order_items: freezed == order_items
          ? _value.order_items
          : order_items // ignore: cast_nullable_to_non_nullable
              as List<OrderItemsModel>?,
      delivery_time: freezed == delivery_time
          ? _value.delivery_time
          : delivery_time // ignore: cast_nullable_to_non_nullable
              as DeliveryTimeModel?,
      supplier: freezed == supplier
          ? _value.supplier
          : supplier // ignore: cast_nullable_to_non_nullable
              as SuppliersModel?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusModel?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String?,
      deleted_at: freezed == deleted_at
          ? _value.deleted_at
          : deleted_at // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DeliveryTimeModelCopyWith<$Res>? get delivery_time {
    if (_value.delivery_time == null) {
      return null;
    }

    return $DeliveryTimeModelCopyWith<$Res>(_value.delivery_time!, (value) {
      return _then(_value.copyWith(delivery_time: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SuppliersModelCopyWith<$Res>? get supplier {
    if (_value.supplier == null) {
      return null;
    }

    return $SuppliersModelCopyWith<$Res>(_value.supplier!, (value) {
      return _then(_value.copyWith(supplier: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StatusModelCopyWith<$Res>? get status {
    if (_value.status == null) {
      return null;
    }

    return $StatusModelCopyWith<$Res>(_value.status!, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_OrderModelCopyWith<$Res>
    implements $OrderModelCopyWith<$Res> {
  factory _$$_OrderModelCopyWith(
          _$_OrderModel value, $Res Function(_$_OrderModel) then) =
      __$$_OrderModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? customer_id,
      String? supplier_id,
      int? project_id,
      int? delivery_time_id,
      int? order_status_id,
      int? payment_id,
      String? payment_method,
      num? total,
      String? notes,
      String? location,
      List<FilesModel>? files,
      List<OrderItemsModel>? order_items,
      DeliveryTimeModel? delivery_time,
      SuppliersModel? supplier,
      StatusModel? status,
      String? created_at,
      String? updated_at,
      String? deleted_at});

  @override
  $DeliveryTimeModelCopyWith<$Res>? get delivery_time;
  @override
  $SuppliersModelCopyWith<$Res>? get supplier;
  @override
  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class __$$_OrderModelCopyWithImpl<$Res>
    extends _$OrderModelCopyWithImpl<$Res, _$_OrderModel>
    implements _$$_OrderModelCopyWith<$Res> {
  __$$_OrderModelCopyWithImpl(
      _$_OrderModel _value, $Res Function(_$_OrderModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? customer_id = freezed,
    Object? supplier_id = freezed,
    Object? project_id = freezed,
    Object? delivery_time_id = freezed,
    Object? order_status_id = freezed,
    Object? payment_id = freezed,
    Object? payment_method = freezed,
    Object? total = freezed,
    Object? notes = freezed,
    Object? location = freezed,
    Object? files = freezed,
    Object? order_items = freezed,
    Object? delivery_time = freezed,
    Object? supplier = freezed,
    Object? status = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? deleted_at = freezed,
  }) {
    return _then(_$_OrderModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      customer_id: freezed == customer_id
          ? _value.customer_id
          : customer_id // ignore: cast_nullable_to_non_nullable
              as int?,
      supplier_id: freezed == supplier_id
          ? _value.supplier_id
          : supplier_id // ignore: cast_nullable_to_non_nullable
              as String?,
      project_id: freezed == project_id
          ? _value.project_id
          : project_id // ignore: cast_nullable_to_non_nullable
              as int?,
      delivery_time_id: freezed == delivery_time_id
          ? _value.delivery_time_id
          : delivery_time_id // ignore: cast_nullable_to_non_nullable
              as int?,
      order_status_id: freezed == order_status_id
          ? _value.order_status_id
          : order_status_id // ignore: cast_nullable_to_non_nullable
              as int?,
      payment_id: freezed == payment_id
          ? _value.payment_id
          : payment_id // ignore: cast_nullable_to_non_nullable
              as int?,
      payment_method: freezed == payment_method
          ? _value.payment_method
          : payment_method // ignore: cast_nullable_to_non_nullable
              as String?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as num?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      files: freezed == files
          ? _value._files
          : files // ignore: cast_nullable_to_non_nullable
              as List<FilesModel>?,
      order_items: freezed == order_items
          ? _value._order_items
          : order_items // ignore: cast_nullable_to_non_nullable
              as List<OrderItemsModel>?,
      delivery_time: freezed == delivery_time
          ? _value.delivery_time
          : delivery_time // ignore: cast_nullable_to_non_nullable
              as DeliveryTimeModel?,
      supplier: freezed == supplier
          ? _value.supplier
          : supplier // ignore: cast_nullable_to_non_nullable
              as SuppliersModel?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusModel?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String?,
      deleted_at: freezed == deleted_at
          ? _value.deleted_at
          : deleted_at // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderModel extends _OrderModel {
  const _$_OrderModel(
      {this.id,
      this.customer_id,
      this.supplier_id,
      this.project_id,
      this.delivery_time_id,
      this.order_status_id,
      this.payment_id,
      this.payment_method,
      this.total,
      this.notes,
      this.location,
      final List<FilesModel>? files,
      final List<OrderItemsModel>? order_items,
      this.delivery_time,
      this.supplier,
      this.status,
      this.created_at,
      this.updated_at,
      this.deleted_at})
      : _files = files,
        _order_items = order_items,
        super._();

  factory _$_OrderModel.fromJson(Map<String, dynamic> json) =>
      _$$_OrderModelFromJson(json);

  @override
  final int? id;
  @override
  final int? customer_id;
  @override
  final String? supplier_id;
  @override
  final int? project_id;
  @override
  final int? delivery_time_id;
  @override
  final int? order_status_id;
  @override
  final int? payment_id;
  @override
  final String? payment_method;
  @override
  final num? total;
  @override
  final String? notes;
  @override
  final String? location;
  final List<FilesModel>? _files;
  @override
  List<FilesModel>? get files {
    final value = _files;
    if (value == null) return null;
    if (_files is EqualUnmodifiableListView) return _files;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<OrderItemsModel>? _order_items;
  @override
  List<OrderItemsModel>? get order_items {
    final value = _order_items;
    if (value == null) return null;
    if (_order_items is EqualUnmodifiableListView) return _order_items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final DeliveryTimeModel? delivery_time;
  @override
  final SuppliersModel? supplier;
  @override
  final StatusModel? status;
  @override
  final String? created_at;
  @override
  final String? updated_at;
  @override
  final String? deleted_at;

  @override
  String toString() {
    return 'OrderModel(id: $id, customer_id: $customer_id, supplier_id: $supplier_id, project_id: $project_id, delivery_time_id: $delivery_time_id, order_status_id: $order_status_id, payment_id: $payment_id, payment_method: $payment_method, total: $total, notes: $notes, location: $location, files: $files, order_items: $order_items, delivery_time: $delivery_time, supplier: $supplier, status: $status, created_at: $created_at, updated_at: $updated_at, deleted_at: $deleted_at)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.customer_id, customer_id) ||
                other.customer_id == customer_id) &&
            (identical(other.supplier_id, supplier_id) ||
                other.supplier_id == supplier_id) &&
            (identical(other.project_id, project_id) ||
                other.project_id == project_id) &&
            (identical(other.delivery_time_id, delivery_time_id) ||
                other.delivery_time_id == delivery_time_id) &&
            (identical(other.order_status_id, order_status_id) ||
                other.order_status_id == order_status_id) &&
            (identical(other.payment_id, payment_id) ||
                other.payment_id == payment_id) &&
            (identical(other.payment_method, payment_method) ||
                other.payment_method == payment_method) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.location, location) ||
                other.location == location) &&
            const DeepCollectionEquality().equals(other._files, _files) &&
            const DeepCollectionEquality()
                .equals(other._order_items, _order_items) &&
            (identical(other.delivery_time, delivery_time) ||
                other.delivery_time == delivery_time) &&
            (identical(other.supplier, supplier) ||
                other.supplier == supplier) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at) &&
            (identical(other.deleted_at, deleted_at) ||
                other.deleted_at == deleted_at));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        customer_id,
        supplier_id,
        project_id,
        delivery_time_id,
        order_status_id,
        payment_id,
        payment_method,
        total,
        notes,
        location,
        const DeepCollectionEquality().hash(_files),
        const DeepCollectionEquality().hash(_order_items),
        delivery_time,
        supplier,
        status,
        created_at,
        updated_at,
        deleted_at
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderModelCopyWith<_$_OrderModel> get copyWith =>
      __$$_OrderModelCopyWithImpl<_$_OrderModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderModelToJson(
      this,
    );
  }
}

abstract class _OrderModel extends OrderModel {
  const factory _OrderModel(
      {final int? id,
      final int? customer_id,
      final String? supplier_id,
      final int? project_id,
      final int? delivery_time_id,
      final int? order_status_id,
      final int? payment_id,
      final String? payment_method,
      final num? total,
      final String? notes,
      final String? location,
      final List<FilesModel>? files,
      final List<OrderItemsModel>? order_items,
      final DeliveryTimeModel? delivery_time,
      final SuppliersModel? supplier,
      final StatusModel? status,
      final String? created_at,
      final String? updated_at,
      final String? deleted_at}) = _$_OrderModel;
  const _OrderModel._() : super._();

  factory _OrderModel.fromJson(Map<String, dynamic> json) =
      _$_OrderModel.fromJson;

  @override
  int? get id;
  @override
  int? get customer_id;
  @override
  String? get supplier_id;
  @override
  int? get project_id;
  @override
  int? get delivery_time_id;
  @override
  int? get order_status_id;
  @override
  int? get payment_id;
  @override
  String? get payment_method;
  @override
  num? get total;
  @override
  String? get notes;
  @override
  String? get location;
  @override
  List<FilesModel>? get files;
  @override
  List<OrderItemsModel>? get order_items;
  @override
  DeliveryTimeModel? get delivery_time;
  @override
  SuppliersModel? get supplier;
  @override
  StatusModel? get status;
  @override
  String? get created_at;
  @override
  String? get updated_at;
  @override
  String? get deleted_at;
  @override
  @JsonKey(ignore: true)
  _$$_OrderModelCopyWith<_$_OrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

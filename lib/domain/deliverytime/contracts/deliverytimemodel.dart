// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../files/model/filesmodel.dart';
import '../../orderitems/model/orderitemsmodel.dart';
part 'deliverytimemodel.freezed.dart';
part 'deliverytimemodel.g.dart';

@freezed
class DeliveryTimeModel with _$DeliveryTimeModel {
  const factory DeliveryTimeModel({
    int? id,
    String? name,
    String? name_ar,
    int? active,
    String? created_at,
    String? updated_at,
    String? deleted_at,
  }) = _DeliveryTimeModel;
  const DeliveryTimeModel._();
  factory DeliveryTimeModel.fromJson(Map<String, dynamic> json) =>
      _$DeliveryTimeModelFromJson(json);
}

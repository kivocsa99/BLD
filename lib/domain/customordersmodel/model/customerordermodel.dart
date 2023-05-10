// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

part 'customerordermodel.freezed.dart';
part 'customerordermodel.g.dart';

@freezed
class CustomerOrderModel with _$CustomerOrderModel {
  const factory CustomerOrderModel({String? id}) = _CustomerOrderModel;
  const CustomerOrderModel._();
  factory CustomerOrderModel.fromJson(Map<String, dynamic> json) =>
      _$CustomerOrderModelFromJson(json);
}

import 'package:bld/domain/orders/contracts/i.order.repository.dart';
import 'package:bld/infrastructure/orders/orders.repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/failures/api.failures.dart';

part 'orders.repository.provider.g.dart';

final ordersRepositoryProvider =
    Provider<IOrderRepository>((ref) => OrdersRepository());
@riverpod
Future<Either<ApiFailures, dynamic>> getSearchPage(GetSearchPageRef ref) async {
  final ordersprovider = ref.watch(ordersRepositoryProvider);
  return ordersprovider.getSearchPage();
}

@riverpod
Future<Either<ApiFailures, dynamic>> getCart(
    GetCartRef ref, String? supplierId) async {
  final ordersprovider = ref.watch(ordersRepositoryProvider);
  return ordersprovider.getCartItems(supplierid: supplierId);
}

@riverpod
Future<Either<ApiFailures, dynamic>> searchItems(
  SearchItemsRef ref, {
  String? title,
  String? supplierid,
  String? categoryid,
}) async {
  final ordersprovider = ref.watch(ordersRepositoryProvider);
  return ordersprovider.searchItems(
      categoryid: categoryid, supplierid: supplierid, title: title);
}

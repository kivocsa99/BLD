import 'package:bld/domain/failures/api.failures.dart';
import 'package:fpdart/fpdart.dart';

abstract class IOrderRepository {
  Future<Either<ApiFailures, dynamic>> getSearchPage();
  Future<Either<ApiFailures, dynamic>> getSuppliers();
  Future<Either<ApiFailures, dynamic>> searchSupplires({
    String? title,
    String? supplierid,
    String? categoryid,
  });
  Future<Either<ApiFailures, dynamic>> searchItems({
    String? title,
    String? supplierid,
    String? categoryid,
  });
  Future<Either<ApiFailures, dynamic>> setQuantity({
    String? quantity,
    String? cartitemid,
  });
  Future<Either<ApiFailures, dynamic>> removeFromCart({
    String? cartitemid,
  });
  Future<Either<ApiFailures, dynamic>> getSupplierItems({
    String? supplierid,
    String? categoryid,
  });
  Future<Either<ApiFailures, dynamic>> getSimilarItems({
    String? supplierproductid,
    String? supplierid,
    String? categoryid,
  });
  Future<Either<ApiFailures, dynamic>> addToCart({
    String? supplierid,
    String? supplierproductid,
    String? quantity,
  });
  Future<Either<ApiFailures, dynamic>> getCartItems({
    String? supplierid,
  });
  Future<Either<ApiFailures, dynamic>> placeOrder({
    required String? supplierid,
    required String? deliverytimeid,
    required String? paymentmethod,
    required String? location,
    required String? notes,
  });
  Future<Either<ApiFailures, dynamic>> initPayment({
    required String id,
  });
  Future<Either<ApiFailures, dynamic>> getTimePayment();
  Future<Either<ApiFailures, dynamic>> getOrdersHistory();
}

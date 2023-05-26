import 'package:bld/domain/cart/model/cartmodel.dart';
import 'package:bld/domain/categoryandproductsmodel/categoryandproductsmodel.dart';
import 'package:bld/domain/failures/api.failures.dart';
import 'package:bld/domain/orders/contracts/i.order.repository.dart';
import 'package:bld/domain/searchpage/searchpagemodel.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

import '../../constatns.dart';

class OrdersRepository implements IOrderRepository {
  @override
  Future<Either<ApiFailures, dynamic>> addToCart(
      {String? supplierid, String? supplierproductid, String? quantity}) {
    var dio = Dio();
    final result = TaskEither<ApiFailures, dynamic>.tryCatch(() async {
      final result = await dio.get(
          "$baseUrl/Shopping/AddToCart?supplier_id=$supplierid&supplier_product_id=$supplierproductid&quantity=$quantity&api_token=$apitoken");
      if (result.data["AZSVR"] == "SUCCESS") {
        final response = result.data;
        return response;
      } else if (result.data["AZSVR"] == "FAILED" &&
          result.data["REASON"] == "OUT_OF_QUANTITY") {
        return "Out of quantity";
      } else if (result.data["AZSVR"] == "FAILED" &&
          result.data["REASON"] == "PRODUCT_IS_INACTIVE") {
        return "Product is inactive";
      } else {
        return const ApiFailures.internalError();
      }
    }, (error, stackTrace) {
      if (error is DioError) {
        switch (error.type) {
          case DioErrorType.connectionTimeout:
            return const ApiFailures.connnectionTimeOut();
          case DioErrorType.cancel:
            return const ApiFailures.cancel();
          case DioErrorType.badResponse:
            return const ApiFailures.noResponse();
          default:
            return const ApiFailures.noResponse();
        }
      }
      return const ApiFailures.internalError();
    });
    return result.map((r) => r).run();
  }

  @override
  Future<Either<ApiFailures, dynamic>> getCartItems({String? supplierid}) {
    var dio = Dio();
    final result = TaskEither<ApiFailures, dynamic>.tryCatch(() async {
      final result = await dio.get(
          "$baseUrl/Shopping/GetCartItems?supplier_id=$supplierid&api_token=$apitoken");
      if (result.data["AZSVR"] == "SUCCESS") {
        Map<String, dynamic> map = result.data;
        List<dynamic> data = map["CartItems"];
        List<CartModel> response =
            data.map((e) => CartModel.fromJson(e)).toList();

        return response;
      } else if (result.data["AZSVR"] == "FAILED" &&
          result.data["REASON"] == "CART_IS_EMPTY") {
        return "Your cart is empty";
      } else {
        return const ApiFailures.internalError();
      }
    }, (error, stackTrace) {
      if (error is DioError) {
        switch (error.type) {
          case DioErrorType.connectionTimeout:
            return const ApiFailures.connnectionTimeOut();
          case DioErrorType.cancel:
            return const ApiFailures.cancel();
          case DioErrorType.badResponse:
            return const ApiFailures.noResponse();
          default:
            return const ApiFailures.noResponse();
        }
      }
      return const ApiFailures.internalError();
    });
    return result.map((r) => r).run();
  }

  @override
  Future<Either<ApiFailures, dynamic>> getOrdersHistory() {
    var dio = Dio();
    final result = TaskEither<ApiFailures, dynamic>.tryCatch(() async {
      final result = await dio
          .get("$baseUrl/Shopping/GetOrdersHistory?api_token=$apitoken");
      if (result.data["AZSVR"] == "SUCCESS") {
        final response = result.data;
        return response;
      } else {
        return const ApiFailures.internalError();
      }
    }, (error, stackTrace) {
      if (error is DioError) {
        switch (error.type) {
          case DioErrorType.connectionTimeout:
            return const ApiFailures.connnectionTimeOut();
          case DioErrorType.cancel:
            return const ApiFailures.cancel();
          case DioErrorType.badResponse:
            return const ApiFailures.noResponse();
          default:
            return const ApiFailures.noResponse();
        }
      }
      return const ApiFailures.internalError();
    });
    return result.map((r) => r).run();
  }

  @override
  Future<Either<ApiFailures, dynamic>> getSearchPage() {
    var dio = Dio();
    final result = TaskEither<ApiFailures, dynamic>.tryCatch(() async {
      final result =
          await dio.get("$baseUrl/Shopping/GetSearchPage?api_token=$apitoken");
      if (result.data["AZSVR"] == "SUCCESS") {
        final response = SearchPageModel.fromJson(result.data);
        return response;
      } else {
        return const ApiFailures.internalError();
      }
    }, (error, stackTrace) {
      if (error is DioError) {
        switch (error.type) {
          case DioErrorType.connectionTimeout:
            return const ApiFailures.connnectionTimeOut();
          case DioErrorType.cancel:
            return const ApiFailures.cancel();
          case DioErrorType.badResponse:
            return const ApiFailures.noResponse();
          default:
            return const ApiFailures.noResponse();
        }
      }
      return const ApiFailures.internalError();
    });
    return result.map((r) => r).run();
  }

  @override
  Future<Either<ApiFailures, dynamic>> getSimilarItems(
      {String? supplierproductid, String? supplierid, String? categoryid}) {
    // TODO: implement getSimilarItems
    throw UnimplementedError();
  }

  @override
  Future<Either<ApiFailures, dynamic>> getSupplierItems(
      {String? supplierid, String? categoryid}) {
    // TODO: implement getSupplierItems
    throw UnimplementedError();
  }

  @override
  Future<Either<ApiFailures, dynamic>> getSuppliers() {
    // TODO: implement getSuppliers
    throw UnimplementedError();
  }

  @override
  Future<Either<ApiFailures, dynamic>> initPayment({required String id}) {
    // TODO: implement initPayment
    throw UnimplementedError();
  }

  @override
  Future<Either<ApiFailures, dynamic>> placeOrder(
      {required String? supplierid,
      required String? deliverytimeid,
      required String? paymentmethod,
      required String? location,
      required String? notes}) {
    var dio = Dio();
    final result = TaskEither<ApiFailures, dynamic>.tryCatch(() async {
      final result = await dio.get(
          "$baseUrl/Shopping/PlaceOrder?supplier_id=$supplierid&delivery_time_id=$deliverytimeid&payment_method=$paymentmethod&location=$location&api_token=$apitoken");
      if (result.data["AZSVR"] == "SUCCESS") {
        final response = SearchPageModel.fromJson(result.data);
        return response;
      } else {
        return const ApiFailures.internalError();
      }
    }, (error, stackTrace) {
      if (error is DioError) {
        switch (error.type) {
          case DioErrorType.connectionTimeout:
            return const ApiFailures.connnectionTimeOut();
          case DioErrorType.cancel:
            return const ApiFailures.cancel();
          case DioErrorType.badResponse:
            return const ApiFailures.noResponse();
          default:
            return const ApiFailures.noResponse();
        }
      }
      return const ApiFailures.internalError();
    });
    return result.map((r) => r).run();
  }

  @override
  Future<Either<ApiFailures, dynamic>> searchItems(
      {String? title, String? supplierid, String? categoryid}) {
    var dio = Dio();
    final result = TaskEither<ApiFailures, dynamic>.tryCatch(() async {
      final result = await dio.get(
          "$baseUrl/Shopping/SearchItems?title=$title&supplier_id=$supplierid&category_id=$categoryid&api_token=$apitoken");
      print(result.realUri);

      if (result.data["AZSVR"] == "SUCCESS") {
        Map<String, dynamic> map = result.data;
        List<dynamic> data = map["Items"]["data"];
        List<CategoryAndProductsModel> response =
            data.map((e) => CategoryAndProductsModel.fromJson(e)).toList();
        categorybox.put("categoryproductcount", map["Items"]["total"]);

        return response;
      } else {
        print(result.realUri);
        return const ApiFailures.internalError();
      }
    }, (error, stackTrace) {
      if (error is DioError) {
        print(error.requestOptions.uri);
        switch (error.type) {
          case DioErrorType.connectionTimeout:
            return const ApiFailures.connnectionTimeOut();
          case DioErrorType.cancel:
            return const ApiFailures.cancel();
          case DioErrorType.badResponse:
            return const ApiFailures.noResponse();
          default:
            return const ApiFailures.noResponse();
        }
      }
      return const ApiFailures.internalError();
    });
    return result.map((r) => r).run();
  }

  @override
  Future<Either<ApiFailures, dynamic>> searchSupplires(
      {String? title, String? supplierid, String? categoryid}) {
    // TODO: implement searchSupplires
    throw UnimplementedError();
  }
}

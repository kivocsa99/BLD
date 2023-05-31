// ignore_for_file: avoid_print

import 'dart:io';

import 'package:bld/domain/cart/model/cartmodel.dart';
import 'package:bld/domain/failures/api.failures.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

import '../../constatns.dart';
import '../../domain/user/contracts/i.user.repository.dart';
import '../../domain/user/model/usermodel.dart';

class UserRepository implements IUserRepository {
  @override
  Future<Either<ApiFailures, dynamic>> deleteNotifications(
      {required String token, required String id}) {
    // TODO: implement deleteNotifications
    throw UnimplementedError();
  }

  @override
  Future<Either<ApiFailures, dynamic>> updateuser({
    required String urlvalue,
    required String value,
    required String token,
  }) async {
    var dio = Dio();
    dio.options.headers = {'Content-Type': "application/json"};

    final result = TaskEither<ApiFailures, dynamic>.tryCatch(() async {
      final result = await dio
          .get("$baseUrl/Users/Update?$urlvalue=$value&api_token=$token");
      if (result.data["AZSVR"] == "SUCCESS") {
        UserModel user = UserModel.fromJson(result.data["UserData"]);
        await setting.put("apitoken", result.data["api_token"]);
        await setting.put("name", user.name);
        await setting.put("email", user.email);
        await setting.put("phone", user.phone);

        return user;
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
            return const ApiFailures.internalError();
        }
      }
      return const ApiFailures.internalError();
    });
    return result.map((r) => r).run();
  }

  @override
  Future<Either<ApiFailures, dynamic>> notification({required String token}) {
    // TODO: implement notification
    throw UnimplementedError();
  }

  @override
  Future<Either<ApiFailures, dynamic>> deleteaccount() async {
    var dio = Dio();
    final result = TaskEither<ApiFailures, dynamic>.tryCatch(() async {
      final result =
          await dio.get("$baseUrl/Users/DeleteMyAccount?api_token=$apitoken");
      if (result.data["AZSVR"] == "SUCCESS") {
        return await Future.delayed(const Duration(milliseconds: 500),
            (() async {
          await setting.clear();
        }));
      } else {
        return const ApiFailures.authFailed();
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

//type maybe image,cover_image
  @override
  Future<Either<ApiFailures, dynamic>> deleteImage(
      {required String token, required String type}) {
    var dio = Dio();
    final result = TaskEither<ApiFailures, dynamic>.tryCatch(() async {
      final result = await dio
          .get("$baseUrl/Users/UpdateImage?type=$type&api_token=$token");
      if (result.data["AZSVR"] == "SUCCESS") {
        return result.data;
      } else {
        return const ApiFailures.authFailed();
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
  Future<Either<ApiFailures, dynamic>> updateImage(
      {required String token, required File image, required String type}) {
    {
      var dio = Dio();
      dio.options.headers = {'Content-Type': "application/json"};
      final result = TaskEither<ApiFailures, dynamic>.tryCatch(() async {
        FormData formData = FormData.fromMap({
          "type": type,
          "file":
              await MultipartFile.fromFile(image.path, filename: image.path),
        });
        final result = await dio.post(
            "$baseUrl/Projects/AttachFile?api_token=$token",
            data: formData);
        if (result.data["AZSVR"] == "SUCCESS") {
          return result.data["FileURL"];
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
  }

  @override
  Future<Either<ApiFailures, dynamic>> getwishlist() {
    var dio = Dio();
    final result = TaskEither<ApiFailures, dynamic>.tryCatch(() async {
      final result =
          await dio.get("$baseUrl/Misc/GetWishlistItems&api_token=$apitoken");
      if (result.data["AZSVR"] == "SUCCESS") {
        Map<String, dynamic> map = result.data;
        List<dynamic> data = map["WishlistItems"];
        List<CartModel> response =
            data.map((e) => CartModel.fromJson(e)).toList();
        return response;
      } else {
        return const ApiFailures.authFailed();
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
}

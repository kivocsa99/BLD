import 'dart:io';

import 'package:fpdart/fpdart.dart';

import '../../failures/api.failures.dart';

abstract class IUserRepository {
  Future<Either<ApiFailures, dynamic>> notification({required String token});
  Future<Either<ApiFailures, dynamic>> getwishlist();
  Future<Either<ApiFailures, dynamic>> deleteaccount();
  Future<Either<ApiFailures, dynamic>> updateImage(
      {required String token, required File image, required String type});
  Future<Either<ApiFailures, dynamic>> deleteImage(
      {required String token, required String type});

  Future<Either<ApiFailures, dynamic>> deleteNotifications(
      {required String token, required String id});
  Future<Either<ApiFailures, dynamic>> updateuser({
    required String urlvalue,
    required String value,
    required String token,
  });
}

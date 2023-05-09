// ignore_for_file: avoid_print

import 'package:bld/domain/failures/api.failures.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

import '../../domain/user/contracts/i.user.repository.dart';

class UserRepository implements IUserRepository {
  @override
  Future<Either<ApiFailures, dynamic>> deleteNotifications({required String token, required String id}) {
    // TODO: implement deleteNotifications
    throw UnimplementedError();
  }

  @override
  Future<Either<ApiFailures, dynamic>> getorders({required String token}) {
    // TODO: implement getorders
    throw UnimplementedError();
  }

  @override
  Future<Either<ApiFailures, dynamic>> neworder({required String token, required String id, required String model}) {
    // TODO: implement neworder
    throw UnimplementedError();
  }

  @override
  Future<Either<ApiFailures, dynamic>> notification({required String token}) {
    // TODO: implement notification
    throw UnimplementedError();
  }
}

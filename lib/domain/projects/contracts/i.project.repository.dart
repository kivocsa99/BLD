import 'dart:io';

import 'package:bld/domain/failures/api.failures.dart';
import 'package:fpdart/fpdart.dart';

abstract class IProjectRepository {
  Future<Either<ApiFailures, dynamic>> addNew({
    required String apitoken,
    required String name,
    required String description,
    required String area,
    required String location,
  });
  Future<Either<ApiFailures, dynamic>> update({
    required String apitoken,
    required String name,
    required String description,
    required String area,
    required String location,
    required int id,
  });
  Future<Either<ApiFailures, dynamic>> getProjects();
  Future<Either<ApiFailures, dynamic>> attachFile({
    required String apitoken,
    required File file,
    required int orderid,
  });
}

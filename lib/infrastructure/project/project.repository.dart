import 'dart:io';

import 'package:bld/domain/failures/api.failures.dart';
import 'package:bld/domain/projects/contracts/i.project.repository.dart';
import 'package:bld/domain/projects/model/userprojectsmodel.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:bld/constatns.dart';

class ProjectRepository implements IProjectRepository {
  @override
  Future<Either<ApiFailures, dynamic>> addNew(
      {required String apitoken,
      required String name,
      required String description,
      required String area,
      required String location}) {
    var dio = Dio();
    final result = TaskEither<ApiFailures, dynamic>.tryCatch(() async {
      print("$name$description$area$location");
      FormData formData = FormData.fromMap({
        "name": name,
        "description": description,
        "area": area,
        "location": location
      });
      final result = await dio.get(
          "$baseUrl/Projects/AddNew?name=$name&description=$description&area=$area&location=$location&api_token=$apitoken",
          data: formData);
      if (result.data["AZSVR"] == "SUCCESS") {
        return result.data;
      } else {
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
  Future<Either<ApiFailures, dynamic>> update(
      {required String apitoken,
      required String name,
      required String description,
      required String area,
      required String location,
      required int id}) {
    var dio = Dio();
    final result = TaskEither<ApiFailures, dynamic>.tryCatch(() async {
      FormData formData = FormData.fromMap({
        "name": name,
        "description": description,
        "area": area,
        "location": location,
        "id": id
      });
      final result = await dio
          .post("$baseUrl/Projects/Update?api_token=$apitoken", data: formData);
      print(result.realUri);
      if (result.data["AZSVR"] == "SUCCESS") {
        return result.data;
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
  Future<Either<ApiFailures, dynamic>> attachFile({
    required String apitoken,
    required File file,
    required int orderid,
  }) {
    var dio = Dio();
    dio.options.headers = {'Content-Type': "application/json"};
    final result = TaskEither<ApiFailures, dynamic>.tryCatch(() async {
      FormData formData = FormData.fromMap({
        "project_id": orderid,
        "file": await MultipartFile.fromFile(file.path, filename: file.path),
      });
      final result = await dio.post(
          "$baseUrl/Projects/AttachFile?api_token=$apitoken",
          data: formData);
      if (result.data["AZSVR"] == "SUCCESS") {
        return result.data["FileURL"];
      } else {
        return const ApiFailures.internalError();
      }
    }, (error, stackTrace) {
      if (error is DioError) {
        print(error.requestOptions.data);
        print(error.message);
        print(error.response);
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
  Future<Either<ApiFailures, dynamic>> getProjects({required String apitoken}) {
    var dio = Dio();
    final result = TaskEither<ApiFailures, dynamic>.tryCatch(() async {
      final result =
          await dio.get("$baseUrl/Projects/GetProjects?api_token=$apitoken");
      print(result.realUri);

      if (result.data["AZSVR"] == "SUCCESS") {
        Map<String, dynamic> map = result.data;
        List<dynamic> data = map["Projects"]["projects"];
        List<UserProjectsModel> projects =
            data.map((e) => UserProjectsModel.fromJson(e)).toList();
        return projects;
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

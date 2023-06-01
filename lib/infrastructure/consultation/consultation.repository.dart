import 'package:bld/domain/consultation/contracts/i.consultation.repository.dart';
import 'package:bld/domain/consultation/model/consultationmodel.dart';
import 'package:bld/domain/failures/api.failures.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:fpdart/src/either.dart';

import '../../constatns.dart';

class ConsultationRepository implements IConsultationRepository {
  @override
  Future<Either<ApiFailures, dynamic>> addNew({
    required String token,
    required String name,
    required String text,
  }) {
    var dio = Dio();
    final result = TaskEither<ApiFailures, dynamic>.tryCatch(() async {
      FormData formData = FormData.fromMap({
        "name": name,
        "text": text,
      });
      final result = await dio.post(
          "$baseUrl/ConsultancyRequests/AddNew?api_token=$token",
          data: formData);
      if (result.data["AZSVR"] == "SUCCESS") {
        return result.data;
      } else {
        return const ApiFailures.internalError();
      }
    }, (error, stackTrace) {
      if (error is DioError) {
        print("Dio$error");

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
  Future<Either<ApiFailures, dynamic>> getConsultations() {
    var dio = Dio();
    final result = TaskEither<ApiFailures, dynamic>.tryCatch(() async {
      final result = await dio.get(
          "$baseUrl/ConsultancyRequests/GetConsultancyRequests?api_token=$apitoken");

      if (result.data["AZSVR"] == "SUCCESS") {
        Map<String, dynamic> map = result.data;
        List<dynamic> data = map["ConsultancyRequests"];
        List<ConsultationModel> response =
            data.map((e) => ConsultationModel.fromJson(e)).toList();
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
}

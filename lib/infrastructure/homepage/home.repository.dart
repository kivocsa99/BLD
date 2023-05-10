import 'package:bld/domain/failures/api.failures.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:bld/constatns.dart';
import '../../domain/homepagemodel/contracts/i.home.repository.dart';
import '../../domain/homepagemodel/model/homepagemodel.dart';

class HomeRepository extends IHomeRepository {
  @override
  Future<Either<ApiFailures, dynamic>> getHomePage({required String apitoken}) {
    var dio = Dio();
    final result = TaskEither<ApiFailures, dynamic>.tryCatch(() async {
      final result =
          await dio.get("$baseUrl/MultiPages/GetHomePage?api_token=$apitoken");
      print(result.realUri);
      if (result.data["AZSVR"] == "SUCCESS") {
        var homepage = HomePageModel.fromJson(result.data);
        print(homepage);
        return homepage;
      } else {
        return const ApiFailures.internalError();
      }
    }, (error, stackTrace) {
      print("olla$error");
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
}

import 'package:bld/domain/failures/api.failures.dart';
import 'package:fpdart/fpdart.dart';

abstract class IHomeRepository {
  Future<Either<ApiFailures, dynamic>> getHomePage({required String apitoken});
}

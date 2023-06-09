import 'package:fpdart/fpdart.dart';

import '../../failures/api.failures.dart';

abstract class IConsultationRepository {
  Future<Either<ApiFailures, dynamic>> getConsultations();
  Future<Either<ApiFailures, dynamic>> addNew({
    required String token,
    required String name,
    required String text,
  });
}

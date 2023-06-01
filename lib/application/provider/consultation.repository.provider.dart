import 'package:bld/domain/consultation/contracts/i.consultation.repository.dart';
import 'package:bld/infrastructure/consultation/consultation.repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/failures/api.failures.dart';

part 'consultation.repository.provider.g.dart';

final consultationProvider =
    Provider<IConsultationRepository>((ref) => ConsultationRepository());
@riverpod
Future<Either<ApiFailures, dynamic>> getconsultation(
    GetconsultationRef ref) async {
  final consulation = ref.watch(consultationProvider);
  return consulation.getConsultations();
}

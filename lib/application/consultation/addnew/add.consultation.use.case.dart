import 'package:bld/application/provider/consultation.repository.provider.dart';
import 'package:bld/domain/consultation/contracts/i.consultation.repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../domain/failures/api.failures.dart';
import '../../core/use_cases/i.use_case.dart';
import 'add.consultation.use.case.input.dart';

final addconsultationProvider = Provider((ref) => AddConsultationUseCase(
    consultationRepository: ref.watch(consultationProvider)));

class AddConsultationUseCase
    implements IUseCase<AddConsultationUseCaseInput, dynamic> {
  final IConsultationRepository? _consultationRepository;
  AddConsultationUseCase({IConsultationRepository? consultationRepository})
      : _consultationRepository = consultationRepository;
  @override
  Future<Either<ApiFailures, dynamic>> execute(input) async {
    return await _consultationRepository!
        .addNew(token: input.token!, name: input.name!, text: input.text!);
  }
}

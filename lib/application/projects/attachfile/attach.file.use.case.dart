import 'package:bld/application/provider/project.repository.provider.dart';
import 'package:bld/domain/projects/contracts/i.project.repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../domain/failures/api.failures.dart';
import '../../core/use_cases/i.use_case.dart';
import 'attach.file.use.case.input.dart';

final ProjectattachfileProvider = Provider((ref) => ProjectAttachFileUseCase(
    projectRepository: ref.watch(projectrepoprovider)));

class ProjectAttachFileUseCase
    implements IUseCase<ProjectAttachFileUseCaseInput, dynamic> {
  final IProjectRepository? _projectRepository;

  ProjectAttachFileUseCase({IProjectRepository? projectRepository})
      : _projectRepository = projectRepository;

  @override
  Future<Either<ApiFailures, dynamic>> execute(
      ProjectAttachFileUseCaseInput input) async {
    return await _projectRepository!.attachFile(
      apitoken: input.token!,
      file: input.file!,
      orderid: input.orderid!,
    );
  }
}

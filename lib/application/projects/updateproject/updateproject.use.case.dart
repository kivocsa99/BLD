import 'package:bld/application/projects/updateproject/updateproject.use.case.input.dart';
import 'package:bld/application/provider/project.repository.provider.dart';
import 'package:bld/domain/projects/contracts/i.project.repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../domain/failures/api.failures.dart';
import '../../core/use_cases/i.use_case.dart';

final updateprojectprovider = Provider((ref) =>
    UploadProjectUseCase(projectRepository: ref.watch(projectrepoprovider)));

class UploadProjectUseCase
    implements IUseCase<UploadProjectUseCaseInput, dynamic> {
  final IProjectRepository? _projectRepository;

  UploadProjectUseCase({IProjectRepository? projectRepository})
      : _projectRepository = projectRepository;

  @override
  Future<Either<ApiFailures, dynamic>> execute(
      UploadProjectUseCaseInput input) async {
    return await _projectRepository!.update(
        id: input.id!,
        apitoken: input.apitoken!,
        name: input.name!,
        description: input.description!,
        area: input.area!,
        location: input.location!);
  }
}

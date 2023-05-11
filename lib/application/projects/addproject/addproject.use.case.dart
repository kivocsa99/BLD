import 'package:bld/application/projects/addproject/addproject.use.case.input.dart';
import 'package:bld/application/provider/project.repository.provider.dart';
import 'package:bld/domain/projects/contracts/i.project.repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../domain/failures/api.failures.dart';
import '../../core/use_cases/i.use_case.dart';

final addprojectprovider = Provider((ref) =>
    AddProjectUseCase(projectRepository: ref.watch(projectrepoprovider)));

class AddProjectUseCase implements IUseCase<AddProjectUseCaseInput, dynamic> {
  final IProjectRepository? _projectRepository;

  AddProjectUseCase({IProjectRepository? projectRepository})
      : _projectRepository = projectRepository;

  @override
  Future<Either<ApiFailures, dynamic>> execute(
      AddProjectUseCaseInput input) async {
    return await _projectRepository!.addNew(
        apitoken: input.apitoken!,
        name: input.name!,
        description: input.description!,
        area: input.area!,
        location: input.location!);
  }
}

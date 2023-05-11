import 'package:bld/domain/projects/contracts/i.project.repository.dart';
import 'package:bld/infrastructure/project/project.repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/failures/api.failures.dart';
part 'project.repository.provider.g.dart';
final projectrepoprovider =
    Provider<IProjectRepository>((ref) => ProjectRepository());
@riverpod
Future<Either<ApiFailures, dynamic>> getprojects(
    GetprojectsRef ref, String token) async {
  final projectsprovider = ref.watch(projectrepoprovider);
  return projectsprovider.getProjects(apitoken: token);
}

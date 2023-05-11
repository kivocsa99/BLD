import 'package:bld/application/provider/user.repository.provider.dart';
import 'package:bld/domain/user/contracts/i.user.repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../domain/failures/api.failures.dart';
import '../../core/use_cases/i.use_case.dart';
import 'delete.file.use.case.input.dart';

final userdeleteimageProvider = Provider(
    (ref) => DeleteImageUseCase(userRepository: ref.watch(userProvider)));

class DeleteImageUseCase
    implements IUseCase<DeleteImageUseCaseInput, dynamic> {
  final IUserRepository? _userRepository;

  DeleteImageUseCase({IUserRepository? userRepository})
      : _userRepository = userRepository;

  @override
  Future<Either<ApiFailures, dynamic>> execute(
      DeleteImageUseCaseInput input) async {
    return await _userRepository!.deleteImage(
      token: input.token!,
      type: input.type!,
    );
  }
}

import 'package:bld/application/provider/user.repository.provider.dart';
import 'package:bld/domain/user/contracts/i.user.repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../domain/failures/api.failures.dart';
import '../../core/use_cases/i.use_case.dart';
import 'attach.file.use.case.input.dart';

final useruploadimageProvider = Provider(
    (ref) => UserUploadImageUseCase(userRepository: ref.watch(userProvider)));

class UserUploadImageUseCase
    implements IUseCase<UserUploadImageUseCaseInput, dynamic> {
  final IUserRepository? _userRepository;

  UserUploadImageUseCase({IUserRepository? userRepository})
      : _userRepository = userRepository;

  @override
  Future<Either<ApiFailures, dynamic>> execute(
      UserUploadImageUseCaseInput input) async {
    return await _userRepository!.updateImage(
      token: input.token!,
      image: input.file!,
      type: input.type!,
    );
  }
}

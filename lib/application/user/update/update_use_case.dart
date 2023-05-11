import 'package:bld/application/provider/user.repository.provider.dart';
import 'package:bld/application/user/update/update_use_case.input.dart';
import 'package:bld/domain/user/contracts/i.user.repository.dart';
import "package:fpdart/fpdart.dart";
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../domain/failures/api.failures.dart';
import '../../core/use_cases/i.no_input_use_case.dart';

final updateuserprovider =
    Provider((ref) => UpdateUser(userRepository: ref.watch(userProvider)));

class UpdateUser implements IUseCase<UpdateUserInput, dynamic> {
  final IUserRepository? _userRepository;
  UpdateUser({IUserRepository? userRepository})
      : _userRepository = userRepository;

  @override
  Future<Either<ApiFailures, dynamic>> execute(input) async {
    return await _userRepository!.updateuser(
      value: input.value!,
      urlvalue: input.urlvalue!,
      token: input.token!,
    );
  }
}

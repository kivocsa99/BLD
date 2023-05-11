import 'package:bld/application/provider/user.repository.provider.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../domain/failures/api.failures.dart';
import '../../../domain/user/contracts/i.user.repository.dart';
import '../../core/use_cases/i.no_input_use_case.dart';
import 'delete_account.use_case.input.dart';

final deleteaccountUseCaseprovider = Provider(
    (ref) => DeleteAccountUseCase(userRepository: ref.watch(userProvider)));

class DeleteAccountUseCase
    implements IUseCase<DeleteAccountUseCaseInput, dynamic> {
  final IUserRepository? _userRepository;
  DeleteAccountUseCase({IUserRepository? userRepository})
      : _userRepository = userRepository;
  @override
  Future<Either<ApiFailures, dynamic>> execute(input) {
    return _userRepository!.deleteaccount(token: input.token!);
  }
}

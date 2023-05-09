import 'package:bld/domain/auth/contracts/auth.facade.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../domain/failures/api.failures.dart';
import '../../core/use_cases/i.no_input_use_case.dart';
import '../../provider/auth.facade.provider.dart';
import 'delete_account.use_case.input.dart';

final deleteaccountUseCaseprovider = Provider((ref) =>
    DeleteAccountUseCase(authFacade: ref.watch(apiauthFacadeProvider)));

class DeleteAccountUseCase
    implements IUseCase<DeleteAccountUseCaseInput, dynamic> {
  final IAuthFacade? _authFacade;
  DeleteAccountUseCase({IAuthFacade? authFacade}) : _authFacade = authFacade;
  @override
  Future<Either<ApiFailures, dynamic>> execute(input) {
    return _authFacade!.deleteaccount(token: input.token!);
  }
}

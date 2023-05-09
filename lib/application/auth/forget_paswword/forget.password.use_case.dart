import 'package:bld/domain/auth/contracts/auth.facade.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../domain/failures/api.failures.dart';
import '../../core/use_cases/i.no_input_use_case.dart';
import '../../provider/auth.facade.provider.dart';
import 'forget.password.use.case.input.dart';



final forgetPasswordUseCaseprovider = Provider((ref) =>
    ForgetPasswordUseCase(authFacade: ref.watch(apiauthFacadeProvider)));

class ForgetPasswordUseCase
    implements IUseCase<ForgetPasswordUseCaseInput, dynamic> {
  final IAuthFacade? _authFacade;
  ForgetPasswordUseCase({IAuthFacade? authFacade})
      : _authFacade = authFacade;
  @override
  Future<Either<ApiFailures, dynamic>> execute(input) {
    return _authFacade!
        .forgetpassword(email: input.email!, phone: input.phone!);
  }
}

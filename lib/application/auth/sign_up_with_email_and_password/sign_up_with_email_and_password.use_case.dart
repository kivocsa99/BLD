import "package:fpdart/fpdart.dart";
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../domain/auth/contracts/auth.facade.dart';

import '../../../domain/failures/api.failures.dart';
import '../../core/use_cases/i.no_input_use_case.dart';
import '../../provider/auth.facade.provider.dart';
import 'sign_up_with_email_and_password.input.dart';

final signUpWithEmailAndPasswordUseCaseProvider = Provider((ref) =>
    SignUpWithEmailAndPasswordUseCase(
        iApiAuthFacade: ref.watch(apiauthFacadeProvider)));

class SignUpWithEmailAndPasswordUseCase
    implements IUseCase<SignUpWithEmailAndPasswordUseCaseInput, dynamic> {
  final IAuthFacade? _iApiAuthFacade;

  SignUpWithEmailAndPasswordUseCase({IAuthFacade? iApiAuthFacade})
      : _iApiAuthFacade = iApiAuthFacade;

  @override
  Future<Either<ApiFailures, dynamic>> execute(input) async {
    return await _iApiAuthFacade!
        .signUpWithCredintials(user: input.user!, password: input.password!);
  }
}


import 'package:bld/domain/auth/contracts/auth.facade.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../domain/failures/api.failures.dart';
import '../../core/use_cases/i.no_input_use_case.dart';
import '../../provider/auth.facade.provider.dart';
import 'otp_use_case_input.dart';

final otpUseCaseProvider = Provider((ref) =>
    OtpUseCase(
        authFacade: ref.watch(apiauthFacadeProvider)));

class OtpUseCase implements IUseCase<OtpUseCaseInput, dynamic> {
  final IAuthFacade? _authFacade;
  OtpUseCase({IAuthFacade? authFacade}) : _authFacade = authFacade;
  @override
  Future<Either<ApiFailures, dynamic>> execute(input) async {
    return await _authFacade!.otpVerfication(phone: input.phone!);
  }
}

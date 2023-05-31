// ignore_for_file: unused_field

import "package:fpdart/fpdart.dart";
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../domain/auth/contracts/i.auth.facade.dart';

import '../../../domain/failures/api.failures.dart';
import '../../core/use_cases/i.use_case.dart';
import '../../provider/auth.facade.provider.dart';
import 'sign_in_with_email_and_password.input.dart';

final signInWithEmailAndPasswordUseCaseProvider = Provider((ref) =>
    SignInWithEmailAndPasswordUseCase(
        authFacade: ref.watch(apiauthFacadeProvider)));

class SignInWithEmailAndPasswordUseCase
    implements IUseCase<SignInWithEmailAndPasswordUseCaseInput, dynamic> {
  final IAuthFacade? _authFacade;
  final Ref? _read;
  SignInWithEmailAndPasswordUseCase({IAuthFacade? authFacade, Ref? read})
      : _authFacade = authFacade,
        _read = read;

  @override
  Future<Either<ApiFailures, dynamic>> execute(input) async {
    return await _authFacade!.signInWithEmailAndPassword(
        phone: input.phone!, password: input.password!);
  }
}


import 'package:bld/application/user/update/update_use_case.input.dart';
import "package:fpdart/fpdart.dart";
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../domain/auth/contracts/auth.facade.dart';
import '../../../../domain/failures/api.failures.dart';
import '../../core/use_cases/i.no_input_use_case.dart';
import '../../provider/auth.facade.provider.dart';



final updateuserprovider =
    Provider((ref) => UpdateUser(authFacade: ref.watch(apiauthFacadeProvider)));

class UpdateUser implements IUseCase<UpdateUserInput, dynamic> {
  final IAuthFacade? _authFacade;
  final Ref? _read;
  UpdateUser({IAuthFacade? authFacade, Ref? read})
      : _authFacade = authFacade,
        _read = read;

  @override
  Future<Either<ApiFailures, dynamic>> execute(input) async {
    return await _authFacade!.updateuser(
        value: input.value!,
        urlvalue: input.urlvalue!,
        token: input.token!,

       );
  }
}

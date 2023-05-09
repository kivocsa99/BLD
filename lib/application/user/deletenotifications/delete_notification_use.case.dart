import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../domain/failures/api.failures.dart';
import '../../../../domain/user/contracts/i.user.repository.dart';

import '../../core/use_cases/i.no_input_use_case.dart';
import '../../provider/user.repository.provider.dart';
import 'delete_notification_use.case.input.dart';

final deleteNotificationsUseCaseProvider = Provider(
    (ref) => DeleteNotificationsUseCase(authFacade: ref.watch(userProvider)));

class DeleteNotificationsUseCase
    implements IUseCase<DeleteNotificationsInput, dynamic> {
  final IUserRepository? _authFacade;
  DeleteNotificationsUseCase({IUserRepository? authFacade})
      : _authFacade = authFacade;
  @override
  Future<Either<ApiFailures, dynamic>> execute(input) async {
    return await _authFacade!
        .deleteNotifications(id: input.id!, token: input.token!);
  }
}

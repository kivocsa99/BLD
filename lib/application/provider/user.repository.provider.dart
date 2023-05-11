import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/failures/api.failures.dart';
import '../../domain/user/contracts/i.user.repository.dart';
import '../../infrastructure/user/user.repository.dart';

part 'user.repository.provider.g.dart';

final userProvider = Provider<IUserRepository>((ref) => UserRepository());



@riverpod
Future<Either<ApiFailures, dynamic>> getnotifications(
    GetnotificationsRef ref, String token) async {
  final userprovider = ref.watch(userProvider);
  return userprovider.notification(token: token);
}

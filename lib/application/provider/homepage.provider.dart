import 'package:bld/domain/homepagemodel/contracts/i.home.repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/failures/api.failures.dart';
import '../../infrastructure/homepage/home.repository.dart';
part 'homepage.provider.g.dart';
final homerepoprovider = Provider<IHomeRepository>((ref)=>HomeRepository());
@riverpod
Future<Either<ApiFailures, dynamic>> gethome(
    GethomeRef ref, String token) async {
  final homeprovider = ref.watch(homerepoprovider);
  return homeprovider.getHomePage(apitoken: token);
}
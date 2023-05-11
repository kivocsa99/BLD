import 'package:bld/domain/auth/contracts/i.auth.facade.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../infrastructure/auth/auth.facade.dart';


final apiauthFacadeProvider = Provider<IAuthFacade>((ref)=>AuthFacade());


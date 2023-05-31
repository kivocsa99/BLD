import "package:fpdart/fpdart.dart";
import 'package:flutter/cupertino.dart';

import '../../failures/api.failures.dart';
import '../../user/model/usermodel.dart';

abstract class IAuthFacade {
  Future<Either<ApiFailures, dynamic>> signUpWithCredintials({
    required String password,
    required String name,
    required String email,
    required String phone,
  });
  Future<Either<ApiFailures, dynamic>> signInWithEmailAndPassword({
    required String phone,
    required String password,
  });
  Future<Either<ApiFailures, dynamic>> forgetpassword({
    required String email,
    required String phone,
  });

  Future<void> signOut(BuildContext context);


  Future<Either<ApiFailures, Unit>> otpVerfication({
    required String phone,
  });

}

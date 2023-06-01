import 'package:bld/domain/auth/contracts/i.auth.facade.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';

import 'package:fpdart/fpdart.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../constatns.dart';
import '../../domain/failures/api.failures.dart';
import '../../domain/user/model/usermodel.dart';

//test api_tokin = 8InjmIhAh4iCaE639W5fuID6XPQ0GGzH
class AuthFacade implements IAuthFacade {
  final _auth = FirebaseAuth.instance;
  static const String inValidPassword = "wrong-password";
  static const String inValidEmail = "user-not-found";
  static const String inUse = "email-already-in-use";
  static const String servererror = "server-error";

  //sign in return
  @override
  Future<Either<ApiFailures, dynamic>> signInWithEmailAndPassword(
      {required String phone, required String password}) {
    print("object");
    var dio = Dio();
    final result = TaskEither<ApiFailures, dynamic>.tryCatch(() async {
      final result = await dio
          .get("$baseUrl/Users/GetToken?phone=$phone&password=$password");
      if (result.data["AZSVR"] == "SUCCESS") {
        UserModel user = UserModel.fromJson(result.data["User"]);
        await setting.put("login", true);
        await setting.put('apitoken', result.data["api_token"]);
        await setting.put("name", user.name);
        await setting.put("email", user.email);
        await setting.put("phone", user.phone);
        await setting.put("firsttime", false);
        print(result.data);

        return result.data["api_token"];
      } else {
        return const ApiFailures.authFailed();
      }
    }, (error, stackTrace) {
      if (error is DioError) {
        switch (error.type) {
          case DioErrorType.connectionTimeout:
            return const ApiFailures.connnectionTimeOut();
          case DioErrorType.cancel:
            return const ApiFailures.cancel();
          case DioErrorType.badResponse:
            return const ApiFailures.noResponse();
          default:
            return const ApiFailures.noResponse();
        }
      }
      return const ApiFailures.internalError();
    });
    return result.map((r) => r).run();
  }

  @override
  Future<void> signOut(BuildContext context) async {
    return await Future.delayed(const Duration(milliseconds: 1000), (() async {
      await setting.clear();
      await projectbox.clear();
      await categorybox.clear();
    }));
  }

  @override
  Future<Either<ApiFailures, dynamic>> signUpWithCredintials({
    required String password,
    required String name,
    required String email,
    required String phone,
  }) async {
    var dio = Dio();
    final result = TaskEither<ApiFailures, dynamic>.tryCatch(() async {
      final result = await dio.get(
          "$baseUrl/Users/Register?name=$name&password=$password&phone=$phone&email=$email");
      print(result.data);
      print(result.realUri);
      if (result.data["AZSVR"] == "SUCCESS") {
        await setting.put("login", true);
        await setting.put("name", name);
        await setting.put("email", email);
        await setting.put("password", password);
        await setting.put("phone", phone);
        await setting.put("firsttime", false);

        await setting.put('apitoken', result.data["api_token"]);

        return result.data["api_token"];
      } else {
        return const ApiFailures.authFailed();
      }
    }, (error, stackTrace) {
      if (error is DioError) {
        print(error.requestOptions.uri);
        switch (error.type) {
          case DioErrorType.connectionTimeout:
            return const ApiFailures.connnectionTimeOut();
          case DioErrorType.cancel:
            return const ApiFailures.cancel();
          case DioErrorType.badResponse:
            return const ApiFailures.noResponse();
          default:
            return const ApiFailures.noResponse();
        }
      }
      return const ApiFailures.internalError();
    });
    return result.map((r) => r).run();
  }

  @override
  Future<Either<ApiFailures, Unit>> otpVerfication(
      {required String phone}) async {
    try {
      await _auth.verifyPhoneNumber(
          verificationCompleted: (verificationCompleted) {},
          verificationFailed: (verificationFailed) {},
          codeSent: (value, codeSent) {},
          codeAutoRetrievalTimeout: (codeAutoRetrievalTimeout) {});
      return right(unit);
    } on FirebaseAuthException catch (error) {
      switch (error.code) {
        case inValidEmail:
          return left(const ApiFailures.authFailed());
        case servererror:
          return left(const ApiFailures.internalError());
        default:
          return left(const ApiFailures.noResponse());
      }
    }
  }

//ask ali for api token

  @override
  Future<Either<ApiFailures, dynamic>> forgetpassword({
    required String email,
    required String phone,
  }) async {
    var dio = Dio();
    final result = TaskEither<ApiFailures, dynamic>.tryCatch(() async {
      final result = await dio
          .get("$baseUrl/Users/SendNewPassword?email=$email&phone=$phone");
      if (result.data["AZSVR"] == "SUCCESS") {
        return result.data;
      } else {
        return const ApiFailures.authFailed();
      }
    }, (error, stackTrace) {
      if (error is DioError) {
        switch (error.type) {
          case DioErrorType.connectionTimeout:
            return const ApiFailures.connnectionTimeOut();
          case DioErrorType.cancel:
            return const ApiFailures.cancel();
          case DioErrorType.badResponse:
            return const ApiFailures.noResponse();
          default:
            return const ApiFailures.noResponse();
        }
      }
      return const ApiFailures.internalError();
    });
    return result.map((r) => r).run();
  }
}

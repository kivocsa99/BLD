import 'package:auto_route/auto_route.dart';
import 'package:bld/application/auth/sign_up_with_email_and_password/sign_up_with_email_and_password.input.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../application/auth/sign_up_with_email_and_password/sign_up_with_email_and_password.use_case.dart';
import '../../constatns.dart';
import '../../routes/app_route.dart';

@RoutePage()
class OtpScreen extends HookConsumerWidget {
  final String? name;
  final String? email;
  final String? password;
  final String? phone;
  const OtpScreen({
    super.key,
    this.name,
    this.email,
    this.password,
    this.phone,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoading = useState(false);
    final scaffoldKey = useState(GlobalKey<ScaffoldMessengerState>());

    return Stack(
      children: [
        SafeArea(
          child: ScaffoldMessenger(
            key: scaffoldKey.value,
            child: Scaffold(
              body: LayoutBuilder(
                builder: (context, constraints) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 25.0, right: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 100,
                        ),
                        const Text(
                          "Please enter the 4-digit code\nthat was sent to your mobile number",
                          style: TextStyle(fontSize: 16),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "4- Code Digit",
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        OtpTextField(
                          numberOfFields: 6,
                          onSubmit: (value) async {
                            isLoading.value = true;
                            final phoneprovider = PhoneAuthProvider.credential(
                                verificationId: setting.get("firebase"),
                                smsCode: value);
                            try {
                              await FirebaseAuth.instance
                                  .signInWithCredential(phoneprovider)
                                  .then((value) {
                                ref
                                    .read(
                                        signUpWithEmailAndPasswordUseCaseProvider)
                                    .execute(
                                        SignUpWithEmailAndPasswordUseCaseInput(
                                            name: name,
                                            phone: phone,
                                            email: email,
                                            password: password))
                                    .then((value) => value.fold((l) {
                                          isLoading.value = false;

                                          return l.toString() ==
                                                  "ApiFailures.noResponse()"
                                              ? showSnack(
                                                  title:
                                                      "Please Check Your internet connection",
                                                  scaffoldMessengerKey:
                                                      scaffoldKey.value)
                                              : showSnack(
                                                  title:
                                                      "Error Occured please contact us",
                                                  scaffoldMessengerKey:
                                                      scaffoldKey.value);
                                        }, (r) {
                                          isLoading.value = false;

                                          return r.toString() ==
                                                  "ApiFailures.authFailed()"
                                              ? showSnack(
                                                  title:
                                                      "Please Check phone number and password",
                                                  scaffoldMessengerKey:
                                                      scaffoldKey.value)
                                              : context.router.replaceAll(
                                                  [const HomeRoute()]);
                                        }));
                              });
                            } catch (error) {
                              print("object");
                              isLoading.value = false;
                            }
                          },
                          readOnly: false,
                          autoFocus: true,
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ),
        Visibility(
          visible: isLoading.value,
          child: Material(
            child: Center(
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: double.infinity,
                color: Colors.black45,
                child: const Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SpinKitCubeGrid(
                        color: Colors.blue,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Loading ...")
                    ],
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

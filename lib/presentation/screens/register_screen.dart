import 'package:auto_route/auto_route.dart';
import 'package:bld/presentation/components/authfield.dart';
import 'package:bld/presentation/components/scrollglowbehavior.dart';
import 'package:bld/routes/app_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../constatns.dart';

@RoutePage()
class RegisterScreen extends HookConsumerWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final passwordController = useTextEditingController();
    final nameController = useTextEditingController();
    final emailController = useTextEditingController();
    final phoneController = useTextEditingController();
    final isLoading = useState(false);
    final namefocus = useFocusNode();
    final emailfocus = useFocusNode();
    final numberfocus = useFocusNode();
    final passwordfocus = useFocusNode();
    final formkey = useState(GlobalKey<FormState>());

    return Stack(
      children: [
        SafeArea(
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: LayoutBuilder(
              builder: (context, constraints) {
                return Container(
                  width: constraints.maxWidth,
                  height: constraints.maxHeight,
                  color: Colors.white,
                  child: Form(
                    key: formkey.value,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                      child: Stack(
                        children: [
                          ScrollConfiguration(
                            behavior: GlowBehavior(),
                            child: ListView(
                              children: [
                                Column(children: [
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: GestureDetector(
                                      onTap: () => context.router.pop(),
                                      child: Container(
                                        width: 42,
                                        height: 42,
                                        decoration: const BoxDecoration(
                                            color: Color(0xffDEF0F5),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(15))),
                                        child: Center(
                                            child: Image.asset(
                                                "assets/close.png")),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            height: 30,
                                          ),
                                          Text(
                                            "Register",
                                            style: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Text(
                                                "Please fill in the form to continue",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    color: Colors.grey)),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                            "assets/registericon.png",
                                            width: 100,
                                            height: 110,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    width: double.infinity,
                                    child: Divider(
                                      color: Colors.grey,
                                      thickness: 1,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  SizedBox(
                                    height: 85,
                                    width: double.infinity,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        const Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            "Name",
                                            style: TextStyle(fontSize: 14),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        AuthField(
                                          width: double.infinity,
                                          hint: "name",
                                          focusNode: namefocus,
                                          inputType: TextInputType.text,
                                          validator: RequiredValidator(
                                              errorText:
                                                  "This Field is Required"),
                                          controller: nameController,
                                          finished: (value) =>
                                              emailfocus.requestFocus(),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 25,
                                  ),
                                  SizedBox(
                                    height: 85,
                                    width: double.infinity,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        const Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            "Email",
                                            style: TextStyle(fontSize: 14),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        AuthField(
                                          width: double.infinity,
                                          hint: "Email",
                                          focusNode: emailfocus,
                                          inputType: TextInputType.emailAddress,
                                          validator: RequiredValidator(
                                              errorText:
                                                  "This Field is Required"),
                                          controller: emailController,
                                          finished: (value) =>
                                              numberfocus.requestFocus(),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 25,
                                  ),
                                  SizedBox(
                                    height: 85,
                                    width: double.infinity,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        const Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            "Mobile Number",
                                            style: TextStyle(fontSize: 14),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: 70,
                                              height: 56,
                                              decoration: const BoxDecoration(
                                                  color: Color(0xffF2F2F2),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(15))),
                                              child: const Center(
                                                child: Text("+962"),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            AuthField(
                                              width: constraints.maxWidth - 130,
                                              hint: "07xxxxxxxx",
                                              focusNode: numberfocus,
                                              inputType: TextInputType.number,
                                              validator: RequiredValidator(
                                                  errorText:
                                                      "This Field is Required"),
                                              controller: phoneController,
                                              finished: (value) =>
                                                  passwordfocus.requestFocus(),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 25,
                                  ),
                                  SizedBox(
                                    height: 85,
                                    width: double.infinity,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        const Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            "Password",
                                            style: TextStyle(fontSize: 14),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        AuthField(
                                          width: double.infinity,
                                          obsecuretext: true,
                                          hint: "Password",
                                          focusNode: passwordfocus,
                                          inputType: TextInputType.text,
                                          validator: MultiValidator([
                                            RequiredValidator(
                                                errorText:
                                                    "This Field is Required"),
                                            LengthRangeValidator(
                                                min: 8,
                                                max: 10,
                                                errorText:
                                                    "Password characters should be 8-10")
                                          ]),
                                          controller: passwordController,
                                          finished: (value) => null,
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                ]),
                              ],
                            ),
                          ),
                          Positioned(
                            bottom: 10,
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap: () async {
                                    isLoading.value = true;
                                    await FirebaseAuth.instance
                                        .verifyPhoneNumber(
                                            phoneNumber:
                                                "+962${phoneController.text.substring(1)}",
                                            verificationCompleted:
                                                (verificationCompleted) {
                                              isLoading.value = false;
                                            },
                                            verificationFailed:
                                                (verificationFailed) {
                                              isLoading.value = false;
                                            },
                                            codeSent: (value, codeSent) async {
                                              isLoading.value = false;

                                              // ScaffoldMessenger.of(context).showSnackBar(
                                              //     SnackBar(content: const Text("resend").tr()));
                                              await setting
                                                  .put("firebase", value)
                                                  .then(
                                                (value) {
                                                  context.router.push(
                                                    OtpRoute(
                                                      name: nameController.text,
                                                      password:
                                                          passwordController
                                                              .text,
                                                      phone:
                                                          phoneController.text,
                                                      email:
                                                          emailController.text,
                                                    ),
                                                  );
                                                },
                                              );
                                            },
                                            codeAutoRetrievalTimeout:
                                                (codeAutoRetrievalTimeout) {});
                                  },
                                  child: Container(
                                    width: constraints.maxWidth - 50,
                                    height: 56,
                                    decoration: const BoxDecoration(
                                        gradient: LinearGradient(colors: [
                                          Color(0xff254955),
                                          Color(0xff3B788B)
                                        ]),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15))),
                                    child: const Center(
                                        child: Text(
                                      "Send Code",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    )),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text(
                                      "Have an account?",
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 16),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        context.router.pop();
                                      },
                                      child: const Text(
                                        "Signin",
                                        style: TextStyle(
                                            color: Color(0xff0093FF),
                                            fontSize: 16),
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  "© 2023 BLD. All Rights Reserved.",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 16),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
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

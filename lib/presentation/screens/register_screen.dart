import 'package:auto_route/auto_route.dart';
import 'package:bld/presentation/widgets/field_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

@RoutePage()
class RegisterScreen extends HookWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Container(
            width: constraints.maxWidth,
            height: constraints.maxHeight,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Stack(alignment: Alignment.center, children: [
                Positioned(
                  top: 50,
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: GestureDetector(
                            onTap: () => context.router.pop(),
                            child: Container(
                              width: 42,
                              height: 42,
                              decoration: const BoxDecoration(
                                  color: Color(0xffDEF0F5),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15))),
                              child: Center(
                                  child: Image.asset("assets/close.png")),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
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
                                          fontWeight: FontWeight.normal,
                                          color: Colors.grey)),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(
                                  "assets/registericon.png",
                                  width: 147,
                                  height: 110,
                                ),
                              ],
                            )
                          ],
                        ),
                        Center(
                          child: SizedBox(
                            width: constraints.maxWidth - 40,
                            child: const Divider(
                              color: Colors.grey,
                              thickness: 1,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          height: 100,
                          width: 367,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
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
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 83,
                                    height: 56,
                                    decoration: const BoxDecoration(
                                        color: Color(0xffF2F2F2),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15))),
                                    child: const Center(
                                      child: Text("+962"),
                                    ),
                                  ),
                                  Container(
                                    width: 260,
                                    height: 56,
                                    decoration: const BoxDecoration(
                                        color: Color(0xffF2F2F2),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15))),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const FieldContainer(
                          title: "Name",
                        ),
                        const FieldContainer(
                          title: "Email",
                        ),
                        const FieldContainer(
                          title: "Password",
                        )
                      ]),
                ),
                Positioned(
                    bottom: 20,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Text(
                              "Don’t have an account?",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 16),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: const Text(
                                "Register",
                                style: TextStyle(
                                    color: Color(0xff0093FF), fontSize: 16),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        const Text(
                          "© 2023 BLD. All Rights Reserved.",
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                      ],
                    ))
              ]),
            ),
          );
        },
      ),
    );
  }
}

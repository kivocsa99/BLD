import 'package:auto_route/auto_route.dart';
import 'package:bld/domain/projects/model/userprojectsmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:transparent_image/transparent_image.dart';

import '../../constatns.dart';
import '../components/scrollglowbehavior.dart';

@RoutePage()
class UserProjectScreen extends HookWidget {
  final UserProjectsModel? project;

  const UserProjectScreen({super.key, this.project});

  @override
  Widget build(BuildContext context) {
    final snakKey = useState(GlobalKey<ScaffoldMessengerState>());
    final isLoading = useState(false);
    final selectedimage = useState("$storageUrl${project!.files![0]}");
    return Stack(
      children: [
        SafeArea(
          child: ScaffoldMessenger(
            key: snakKey.value,
            child: Scaffold(
              resizeToAvoidBottomInset: false,
              backgroundColor: const Color(0xffF2F2F2),
              body: LayoutBuilder(
                builder: (context, constraints) {
                  return Container(
                    color: const Color(0xffF2F2F2),
                    width: constraints.maxWidth,
                    height: constraints.maxHeight,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 25.0, right: 25.0),
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                SizedBox(
                                  width: double.infinity,
                                  height: 62,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      GestureDetector(
                                        onTap: () => context.router.pop(),
                                        child: Container(
                                          decoration: const BoxDecoration(
                                              color: Color(0xffDEF0F5),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(15.0))),
                                          width: 42,
                                          height: 42,
                                          child: Center(
                                            child:
                                                Image.asset("assets/back.png"),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        project!.name!,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                      const SizedBox(
                                        width: 42,
                                        height: 42,
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Expanded(
                                  child: ScrollConfiguration(
                                    behavior: GlowBehavior(),
                                    child: ListView(
                                      keyboardDismissBehavior:
                                          ScrollViewKeyboardDismissBehavior
                                              .onDrag,
                                      children: [
                                        Container(
                                          width: double.infinity,
                                          height: 200,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: Stack(
                                            children: [
                                              Image.asset(
                                                "assets/Logo.png",
                                                fit: BoxFit.fitWidth,
                                              ),
                                              Positioned(
                                                right: 10,
                                                top: 60,
                                                left: 0,
                                                bottom: 0,
                                                child: Container(
                                                  width: 40,
                                                  height: 40,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15),
                                                  ),
                                                  child: Center(
                                                    child: Image.asset(
                                                        "assets/next.png"),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    blurRadius: 10.0,
                                    offset: const Offset(0, -2),
                                  ),
                                ],
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(25.0),
                                    topRight: Radius.circular(25.0))),
                            height: 104,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 25.0,
                                  right: 25.0,
                                  top: 25.0,
                                  bottom: 25.0),
                              child: GestureDetector(
                                child: Container(
                                  decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15.0)),
                                      gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Color(0xff3B788B),
                                            Color(0xff2B4D58)
                                          ])),
                                  width: double.infinity,
                                  child: const Center(
                                    child: Text(
                                      "Place Order",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ),
        visibile(
            height: MediaQuery.of(context).size.height, loding: isLoading.value)
      ],
    );
  }
}

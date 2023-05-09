import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

@RoutePage()
class DashBoardScreen extends HookWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Padding(
            padding: const EdgeInsets.only(left: 24.0, right: 24),
            child: Container(
              width: constraints.maxWidth,
              height: constraints.maxHeight,
              color: Colors.white,
              child: Stack(alignment: Alignment.center, children: [
                Positioned(
                  top: 50,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 24.0, right: 24),
                          width: constraints.maxWidth,
                          height: 42,
                          color: Colors.transparent,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 42,
                                width: 42,
                                decoration: const BoxDecoration(
                                    color: Color(0xffDEF0F5),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15))),
                                child: Center(
                                    child: Image.asset("assets/Menu.png")),
                              ),
                              const SizedBox(
                                height: 24,
                                width: 54,
                                child: Center(
                                    child: Text(
                                  "Home",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                )),
                              ),
                              Container(
                                height: 42,
                                width: 42,
                                decoration: const BoxDecoration(
                                    color: Color(0xffDEF0F5),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15))),
                                child: Center(
                                    child:
                                        Image.asset("assets/notification.png")),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                                width: 40,
                                height: 40,
                                child: ClipOval(
                                    child: Image.asset("assets/Logo.png")))
                          ],
                        )
                      ]),
                ),
              ]),
            ),
          );
        },
      ),
    );
  }
}

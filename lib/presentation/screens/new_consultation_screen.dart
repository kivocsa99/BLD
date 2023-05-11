import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:bld/routes/app_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class NewConsultationScreen extends HookConsumerWidget {
  const NewConsultationScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: double.infinity,
                height: 62,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.all(Radius.circular(15.0))),
                      width: 42,
                      height: 42,
                      child: Center(
                        child: Image.asset("assets/Menu.png"),
                      ),
                    ),
                    const Center(
                      child: Text(
                        "Consult an Expert",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.transparent,
                      ),
                      width: 42,
                      height: 42,
                    ),
                  ],
                ),
              )
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Material(
              elevation: 10,
              child: Container(
                height: 100,
                color: Colors.red,
              ),
            ),
          )
        ],
      ),
    ));
  }
}

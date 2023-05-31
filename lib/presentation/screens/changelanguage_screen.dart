import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

@RoutePage()
class ChangeLangScreen extends HookWidget {
  const ChangeLangScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final currentlang = useState(context.locale.languageCode);
    return SafeArea(
      child: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            print("h${constraints.maxWidth}");
            return SizedBox(
              width: constraints.maxWidth,
              height: constraints.maxHeight,
              child: Column(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                      child: Column(
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
                                GestureDetector(
                                  onTap: () => context.router.pop(),
                                  child: Container(
                                    decoration: const BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15.0))),
                                    width: 42,
                                    height: 42,
                                    child: Center(
                                      child: Image.asset("assets/back.png"),
                                    ),
                                  ),
                                ),
                                const Center(
                                  child: Text(
                                    "Change Language",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ),
                                Container(
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15.0))),
                                  width: 42,
                                  height: 42,
                                  child: Center(
                                      child: Image.asset("assets/cart.png")),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Please choose the default language",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 14),
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          GestureDetector(
                            onTap: () => context.setLocale(const Locale("en")),
                            child: Container(
                              padding: const EdgeInsets.all(25),
                              width: double.infinity,
                              height: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: currentlang.value != "en"
                                      ? const Color(0xffF2F2F2)
                                      : const Color(0xffDEF0F5)),
                              child: Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(5),
                                    width: 25,
                                    height: 25,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            color: currentlang.value != "en"
                                                ? Colors.black
                                                : const Color(0xff3B788B),
                                            width: currentlang.value != "en"
                                                ? 2
                                                : 1)),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: currentlang.value != "en"
                                              ? Colors.transparent
                                              : const Color(0xff3B788B)),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Text(
                                    "English",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          GestureDetector(
                            onTap: () => context.setLocale(const Locale("ar")),
                            child: Container(
                              padding: const EdgeInsets.all(25),
                              width: double.infinity,
                              height: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: currentlang.value != "ar"
                                      ? const Color(0xffF2F2F2)
                                      : const Color(0xffDEF0F5)),
                              child: Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(5),
                                    width: 25,
                                    height: 25,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            color: currentlang.value != "ar"
                                                ? Colors.black
                                                : const Color(0xff3B788B),
                                            width: currentlang.value != "ar"
                                                ? 2
                                                : 1)),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: currentlang.value != "ar"
                                              ? Colors.transparent
                                              : const Color(0xff3B788B)),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Text(
                                    "Arabic",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

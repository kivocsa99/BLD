import 'package:auto_route/auto_route.dart';
import 'package:bld/routes/app_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

@RoutePage()
class MainScreen extends HookWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final pageIndex = useState(0);

    return AutoTabsRouter(
      routes: const [
        HomeRoute(),
        OrdersRoute(),
        ProjectsRoute(),
        ConsultationRoute(),
      ],
      transitionBuilder: (context, child, animation) => FadeTransition(
        opacity: animation,
        child: child,
      ),
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return SafeArea(
            child: Scaffold(
          bottomNavigationBar: Container(
            height: 60,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  enableFeedback: false,
                  onPressed: () async {
                    pageIndex.value = 0;
                    tabsRouter.setActiveIndex(pageIndex.value);
                  },
                  icon: pageIndex.value == 0
                      ? const Icon(
                          Icons.home_filled,
                          color: Colors.white,
                          size: 35,
                        )
                      : const Icon(
                          Icons.home_outlined,
                          color: Colors.white,
                          size: 35,
                        ),
                ),
                IconButton(
                  enableFeedback: false,
                  onPressed: () {
                    pageIndex.value = 1;
                    tabsRouter.setActiveIndex(pageIndex.value);
                  },
                  icon: pageIndex.value == 1
                      ? const Icon(
                          Icons.work_rounded,
                          color: Colors.white,
                          size: 35,
                        )
                      : const Icon(
                          Icons.work_outline_outlined,
                          color: Colors.white,
                          size: 35,
                        ),
                ),
                IconButton(
                  enableFeedback: false,
                  onPressed: () async {
                    pageIndex.value = 2;
                    tabsRouter.setActiveIndex(pageIndex.value);
                  },
                  icon: pageIndex.value == 2
                      ? const Icon(
                          Icons.widgets_rounded,
                          color: Colors.white,
                          size: 35,
                        )
                      : const Icon(
                          Icons.widgets_outlined,
                          color: Colors.white,
                          size: 35,
                        ),
                ),
                IconButton(
                  splashRadius: 20,
                  enableFeedback: false,
                  onPressed: () async {
                    pageIndex.value = 3;
                    tabsRouter.setActiveIndex(pageIndex.value);
                  },
                  icon: pageIndex.value == 3
                      ? const Icon(
                          Icons.person,
                          color: Colors.white,
                          size: 35,
                        )
                      : const Icon(
                          Icons.person_outline,
                          color: Colors.white,
                          size: 35,
                        ),
                ),
              ],
            ),
          ),
          body: LayoutBuilder(
            builder: (p0, constraints) {
              return Container(
                color: const Color(0xFFF2F2F2),
                width: constraints.maxWidth,
                height: constraints.maxHeight,
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
                                "Home",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15.0))),
                              width: 42,
                              height: 42,
                              child: Center(
                                child: Image.asset("assets/notification.png"),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(child: child)
                    ],
                  ),
                ),
              );
            },
          ),
        ));
      },
    );
  }
}

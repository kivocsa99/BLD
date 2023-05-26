import 'package:auto_route/auto_route.dart';
import 'package:bld/routes/app_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';


@RoutePage()
class MainScreen extends HookWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int pageIndex = 0;

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
            height: 90,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
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
                      pageIndex = 0;
                      tabsRouter.setActiveIndex(pageIndex);
                    },
                    icon: pageIndex == 0
                        ? Image.asset("assets/nav/homeactive.png")
                        : Image.asset("assets/nav/home.png")),
                IconButton(
                  enableFeedback: false,
                  onPressed: () {
                    pageIndex = 1;
                    tabsRouter.setActiveIndex(pageIndex);
                  },
                  icon: pageIndex == 1
                      ? Image.asset("assets/nav/orderactive.png")
                      : Image.asset("assets/nav/orders.png"),
                ),
                IconButton(
                  enableFeedback: false,
                  onPressed: () async {
                    pageIndex = 2;
                    tabsRouter.setActiveIndex(pageIndex);
                  },
                  icon: pageIndex == 2
                      ? Image.asset("assets/nav/project.png")
                      : Image.asset("assets/nav/projectactive.png"),
                ),
                IconButton(
                  splashRadius: 20,
                  enableFeedback: false,
                  onPressed: () async {
                    pageIndex = 3;
                    tabsRouter.setActiveIndex(pageIndex);
                  },
                  icon: pageIndex == 3
                      ? Image.asset("assets/nav/consultactive.png")
                      : Image.asset("assets/nav/consult.png"),
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
                            Center(
                              child: Text(
                                pageIndex == 0
                                    ? "Home"
                                    : pageIndex == 1
                                        ? "Orders"
                                        : pageIndex == 2
                                            ? "Projects"
                                            : "Consultations",
                                style: const TextStyle(
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

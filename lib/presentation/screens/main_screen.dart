import 'package:auto_route/auto_route.dart';
import 'package:bld/constatns.dart';
import 'package:bld/routes/app_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';

import '../../infrastructure/auth/auth.facade.dart';

@RoutePage()
class MainScreen extends HookWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    apitoken = setting.get("apitoken");
    int pageIndex = 0;
    final GlobalKey<SideMenuState> _sideMenuKey = GlobalKey<SideMenuState>();
    toggleMenu() {
      final _state = _sideMenuKey.currentState!;
      if (_state.isOpened) {
        _state.closeSideMenu();
      } else {
        _state.openSideMenu();
      }
    }

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
            child: SideMenu(
          key: _sideMenuKey,
          menu: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(vertical: 50.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 22.0,
                      ),
                      const SizedBox(height: 16.0),
                      Text(
                        "Hello, ${setting.get("name")}",
                        style: const TextStyle(color: Colors.white),
                      ),
                      const SizedBox(height: 20.0),
                    ],
                  ),
                ),
                ListTile(
                  onTap: () async {
                    _sideMenuKey.currentState!.closeSideMenu();

                    context.router.push(const ChangeLangRoute());
                  },
                  leading: Image.asset(
                    "assets/lang.png",
                    scale: 1,
                    color: Colors.white,
                  ),
                  title: const Text("Language"),
                  textColor: Colors.white,
                  dense: true,

                  // padding: EdgeInsets.zero,
                ),
                ListTile(
                  onTap: () {
                    _sideMenuKey.currentState!.closeSideMenu();

                    context.router.push(const WishListRoute());
                  },
                  leading: Image.asset(
                    "assets/wishlist.png",
                    scale: 1,
                    color: Colors.white,
                  ),
                  title: const Text("Wishlist"),
                  textColor: Colors.white,
                  dense: true,

                  // padding: EdgeInsets.zero,
                ),
                ListTile(
                  onTap: () {
                    _sideMenuKey.currentState!.closeSideMenu();

                    context.router.push(const AboutRoute());
                  },
                  leading: Image.asset(
                    "assets/about.png",
                    scale: 1,
                    color: Colors.white,
                  ),
                  title: const Text("About Us"),
                  textColor: Colors.white,
                  dense: true,
                ),
                ListTile(
                  onTap: () {
                    _sideMenuKey.currentState!.closeSideMenu();

                    context.router.push(const ContactUsRoute());
                  },
                  leading: Image.asset(
                    "assets/contact.png",
                    scale: 1,
                    color: Colors.white,
                  ),
                  title: const Text("Contact Us"),
                  textColor: Colors.white,
                  dense: true,

                  // padding: EdgeInsets.zero,
                ),
                ListTile(
                  onTap: () {},
                  leading: Image.asset(
                    "assets/rate.png",
                    scale: 1,
                    color: Colors.white,
                  ),
                  title: const Text("Rate the app"),
                  textColor: Colors.white,
                  dense: true,

                  // padding: EdgeInsets.zero,
                ),
                ListTile(
                  onTap: () async {
                    await AuthFacade().signOut(context).then((value) async {
                      await context.router.replaceAll([const LoginRoute()]);
                    });
                  },
                  leading: Image.asset(
                    "assets/logout.png",
                    scale: 1,
                    color: Colors.white,
                  ),
                  title: const Text("Logout"),
                  textColor: Colors.white,
                  dense: true,
                ),
              ],
            ),
          ),
          type: SideMenuType.shrikNRotate, // check above images
          child: Scaffold(
            extendBody: true,
            bottomNavigationBar: Container(
              height: 90,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(30.0)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10.0,
                    offset: Offset(0, -2),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(30.0)),
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
                              GestureDetector(
                                onTap: () => toggleMenu(),
                                child: Container(
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15.0))),
                                  width: 42,
                                  height: 42,
                                  child: Center(
                                    child: Image.asset("assets/Menu.png"),
                                  ),
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
          ),
        ));
      },
    );
  }
}

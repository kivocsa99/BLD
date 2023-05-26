import 'package:auto_route/auto_route.dart';
import 'package:bld/presentation/screens/login_screen.dart';
import 'package:flutter/material.dart';
import '../domain/cart/model/cartmodel.dart';
import '../domain/categoryandproductsmodel/categoryandproductsmodel.dart';
import '../presentation/screens/cart_screen.dart';
import '../presentation/screens/category_screen.dart';
import '../presentation/screens/home_screen.dart';
import '../presentation/screens/dashboard_screen.dart';
import '../presentation/screens/location_screen.dart';
import '../presentation/screens/main_screen.dart';
import '../presentation/screens/new_consultation_screen.dart';
import '../presentation/screens/new_order_screen.dart';
import '../presentation/screens/new_project_screen.dart';
import '../presentation/screens/onboarding_screen.dart';
import '../presentation/screens/otp_screen.dart';
import '../presentation/screens/product_screen.dart';
import '../presentation/screens/register_screen.dart';
import '../presentation/screens/consultation_screen.dart';
import '../presentation/screens/orders_screen.dart';
import '../presentation/screens/projects_screen.dart';
part 'app_route.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType =>
      const RouteType.material(); //.cupertino, .adaptive ..etc
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
            initial: true,
            page: LoginRoute.page,
            type: RouteType.custom(
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) =>
                      SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(-1.0, 0.0),
                  end: Offset.zero,
                ).animate(animation),
                child: FadeTransition(opacity: animation, child: child),
              ),
            )),
        AutoRoute(
            page: OnBoardingRoute.page,
            type: RouteType.custom(
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) =>
                      SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(-1.0, 0.0),
                  end: Offset.zero,
                ).animate(animation),
                child: FadeTransition(opacity: animation, child: child),
              ),
            )),
        AutoRoute(
            page: MainRoute.page,
            children: [
              AutoRoute(page: HomeRoute.page),
              AutoRoute(page: OrdersRoute.page),
              AutoRoute(page: ProjectsRoute.page),
              AutoRoute(page: ConsultationRoute.page),
            ],
            type: RouteType.custom(
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) =>
                      SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(0.0, -1.0),
                  end: Offset.zero,
                ).animate(animation),
                child: FadeTransition(opacity: animation, child: child),
              ),
            )),
        AutoRoute(
            page: NewOrdersRoute.page,
            type: RouteType.custom(
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) =>
                      SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(0.0, 1.0),
                  end: Offset.zero,
                ).animate(animation),
                child: FadeTransition(opacity: animation, child: child),
              ),
            )),
        AutoRoute(
            page: NewConsultationRoute.page,
            type: RouteType.custom(
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) =>
                      SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(0.0, 1.0),
                  end: Offset.zero,
                ).animate(animation),
                child: FadeTransition(opacity: animation, child: child),
              ),
            )),
        AutoRoute(
            page: OtpRoute.page,
            type: RouteType.custom(
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) =>
                      SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(0.0, 1.0),
                  end: Offset.zero,
                ).animate(animation),
                child: FadeTransition(opacity: animation, child: child),
              ),
            )),
        AutoRoute(
            page: CategoryRoute.page,
            type: RouteType.custom(
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) =>
                      SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(0.0, 1.0),
                  end: Offset.zero,
                ).animate(animation),
                child: FadeTransition(opacity: animation, child: child),
              ),
            )),
        AutoRoute(
            page: CartRoute.page,
            type: RouteType.custom(
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) =>
                      SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(0.0, 1.0),
                  end: Offset.zero,
                ).animate(animation),
                child: FadeTransition(opacity: animation, child: child),
              ),
            )),
        AutoRoute(
            page: ProductRoute.page,
            type: RouteType.custom(
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) =>
                      SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(0.0, 1.0),
                  end: Offset.zero,
                ).animate(animation),
                child: FadeTransition(opacity: animation, child: child),
              ),
            )),
        AutoRoute(
            page: NewProjectRoute.page,
            type: RouteType.custom(
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) =>
                      SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(0.0, 1.0),
                  end: Offset.zero,
                ).animate(animation),
                child: FadeTransition(opacity: animation, child: child),
              ),
            )),
        AutoRoute(
            page: RegisterRoute.page,
            type: RouteType.custom(
              durationInMilliseconds: 800,
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) =>
                      SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(0.0, 1.0),
                  end: Offset.zero,
                ).animate(animation),
                child: child,
              ),
            )),
      ];
}

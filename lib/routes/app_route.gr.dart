// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_route.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AboutRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AboutScreen(),
      );
    },
    CartRoute.name: (routeData) {
      final args =
          routeData.argsAs<CartRouteArgs>(orElse: () => const CartRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CartScreen(
          key: args.key,
          supplierid: args.supplierid,
        ),
      );
    },
    CategoryRoute.name: (routeData) {
      final args = routeData.argsAs<CategoryRouteArgs>(
          orElse: () => const CategoryRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CategoryScreen(
          categoryId: args.categoryId,
          key: args.key,
          categoryName: args.categoryName,
        ),
      );
    },
    ChangeLangRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ChangeLangScreen(),
      );
    },
    ConsultationRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ConsultationScreen(),
      );
    },
    DashBoardRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DashBoardScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    LocationRoute.name: (routeData) {
      final args = routeData.argsAs<LocationRouteArgs>(
          orElse: () => const LocationRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: LocationScreen(
          key: args.key,
          isproject: args.isproject,
        ),
      );
    },
    LoginRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginScreen(),
      );
    },
    MainRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MainScreen(),
      );
    },
    NewConsultationRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const NewConsultationScreen(),
      );
    },
    NewOrdersRoute.name: (routeData) {
      final args = routeData.argsAs<NewOrdersRouteArgs>(
          orElse: () => const NewOrdersRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: NewOrdersScreen(
          key: args.key,
          comingroute: args.comingroute,
        ),
      );
    },
    NewProjectRoute.name: (routeData) {
      final args = routeData.argsAs<NewProjectRouteArgs>(
          orElse: () => const NewProjectRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: NewProjectScreen(
          key: args.key,
          maplat: args.maplat,
        ),
      );
    },
    OnBoardingRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OnBoardingScreen(),
      );
    },
    OrdersRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OrdersScreen(),
      );
    },
    OtpRoute.name: (routeData) {
      final args =
          routeData.argsAs<OtpRouteArgs>(orElse: () => const OtpRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: OtpScreen(
          key: args.key,
          name: args.name,
          email: args.email,
          password: args.password,
          phone: args.phone,
        ),
      );
    },
    PaymentRoute.name: (routeData) {
      final args = routeData.argsAs<PaymentRouteArgs>(
          orElse: () => const PaymentRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PaymentScreen(
          key: args.key,
          baseurl: args.baseurl,
        ),
      );
    },
    ProductRoute.name: (routeData) {
      final args = routeData.argsAs<ProductRouteArgs>(
          orElse: () => const ProductRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ProductScreen(
          key: args.key,
          product: args.product,
        ),
      );
    },
    ProjectsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProjectsScreen(),
      );
    },
    RegisterRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RegisterScreen(),
      );
    },
    WishListRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const WishListScreen(),
      );
    },
    UserProjectRoute.name: (routeData) {
      final args = routeData.argsAs<UserProjectRouteArgs>(
          orElse: () => const UserProjectRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: UserProjectScreen(
          key: args.key,
          project: args.project,
        ),
      );
    },
    ContactUsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ContactUsScreen(),
      );
    },
  };
}

/// generated route for
/// [AboutScreen]
class AboutRoute extends PageRouteInfo<void> {
  const AboutRoute({List<PageRouteInfo>? children})
      : super(
          AboutRoute.name,
          initialChildren: children,
        );

  static const String name = 'AboutRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CartScreen]
class CartRoute extends PageRouteInfo<CartRouteArgs> {
  CartRoute({
    Key? key,
    String? supplierid,
    List<PageRouteInfo>? children,
  }) : super(
          CartRoute.name,
          args: CartRouteArgs(
            key: key,
            supplierid: supplierid,
          ),
          initialChildren: children,
        );

  static const String name = 'CartRoute';

  static const PageInfo<CartRouteArgs> page = PageInfo<CartRouteArgs>(name);
}

class CartRouteArgs {
  const CartRouteArgs({
    this.key,
    this.supplierid,
  });

  final Key? key;

  final String? supplierid;

  @override
  String toString() {
    return 'CartRouteArgs{key: $key, supplierid: $supplierid}';
  }
}

/// generated route for
/// [CategoryScreen]
class CategoryRoute extends PageRouteInfo<CategoryRouteArgs> {
  CategoryRoute({
    String? categoryId,
    Key? key,
    String? categoryName,
    List<PageRouteInfo>? children,
  }) : super(
          CategoryRoute.name,
          args: CategoryRouteArgs(
            categoryId: categoryId,
            key: key,
            categoryName: categoryName,
          ),
          initialChildren: children,
        );

  static const String name = 'CategoryRoute';

  static const PageInfo<CategoryRouteArgs> page =
      PageInfo<CategoryRouteArgs>(name);
}

class CategoryRouteArgs {
  const CategoryRouteArgs({
    this.categoryId,
    this.key,
    this.categoryName,
  });

  final String? categoryId;

  final Key? key;

  final String? categoryName;

  @override
  String toString() {
    return 'CategoryRouteArgs{categoryId: $categoryId, key: $key, categoryName: $categoryName}';
  }
}

/// generated route for
/// [ChangeLangScreen]
class ChangeLangRoute extends PageRouteInfo<void> {
  const ChangeLangRoute({List<PageRouteInfo>? children})
      : super(
          ChangeLangRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChangeLangRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ConsultationScreen]
class ConsultationRoute extends PageRouteInfo<void> {
  const ConsultationRoute({List<PageRouteInfo>? children})
      : super(
          ConsultationRoute.name,
          initialChildren: children,
        );

  static const String name = 'ConsultationRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [DashBoardScreen]
class DashBoardRoute extends PageRouteInfo<void> {
  const DashBoardRoute({List<PageRouteInfo>? children})
      : super(
          DashBoardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashBoardRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LocationScreen]
class LocationRoute extends PageRouteInfo<LocationRouteArgs> {
  LocationRoute({
    Key? key,
    bool? isproject,
    List<PageRouteInfo>? children,
  }) : super(
          LocationRoute.name,
          args: LocationRouteArgs(
            key: key,
            isproject: isproject,
          ),
          initialChildren: children,
        );

  static const String name = 'LocationRoute';

  static const PageInfo<LocationRouteArgs> page =
      PageInfo<LocationRouteArgs>(name);
}

class LocationRouteArgs {
  const LocationRouteArgs({
    this.key,
    this.isproject,
  });

  final Key? key;

  final bool? isproject;

  @override
  String toString() {
    return 'LocationRouteArgs{key: $key, isproject: $isproject}';
  }
}

/// generated route for
/// [LoginScreen]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MainScreen]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute({List<PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [NewConsultationScreen]
class NewConsultationRoute extends PageRouteInfo<void> {
  const NewConsultationRoute({List<PageRouteInfo>? children})
      : super(
          NewConsultationRoute.name,
          initialChildren: children,
        );

  static const String name = 'NewConsultationRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [NewOrdersScreen]
class NewOrdersRoute extends PageRouteInfo<NewOrdersRouteArgs> {
  NewOrdersRoute({
    Key? key,
    String? comingroute,
    List<PageRouteInfo>? children,
  }) : super(
          NewOrdersRoute.name,
          args: NewOrdersRouteArgs(
            key: key,
            comingroute: comingroute,
          ),
          initialChildren: children,
        );

  static const String name = 'NewOrdersRoute';

  static const PageInfo<NewOrdersRouteArgs> page =
      PageInfo<NewOrdersRouteArgs>(name);
}

class NewOrdersRouteArgs {
  const NewOrdersRouteArgs({
    this.key,
    this.comingroute,
  });

  final Key? key;

  final String? comingroute;

  @override
  String toString() {
    return 'NewOrdersRouteArgs{key: $key, comingroute: $comingroute}';
  }
}

/// generated route for
/// [NewProjectScreen]
class NewProjectRoute extends PageRouteInfo<NewProjectRouteArgs> {
  NewProjectRoute({
    Key? key,
    LatLng? maplat,
    List<PageRouteInfo>? children,
  }) : super(
          NewProjectRoute.name,
          args: NewProjectRouteArgs(
            key: key,
            maplat: maplat,
          ),
          initialChildren: children,
        );

  static const String name = 'NewProjectRoute';

  static const PageInfo<NewProjectRouteArgs> page =
      PageInfo<NewProjectRouteArgs>(name);
}

class NewProjectRouteArgs {
  const NewProjectRouteArgs({
    this.key,
    this.maplat,
  });

  final Key? key;

  final LatLng? maplat;

  @override
  String toString() {
    return 'NewProjectRouteArgs{key: $key, maplat: $maplat}';
  }
}

/// generated route for
/// [OnBoardingScreen]
class OnBoardingRoute extends PageRouteInfo<void> {
  const OnBoardingRoute({List<PageRouteInfo>? children})
      : super(
          OnBoardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnBoardingRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OrdersScreen]
class OrdersRoute extends PageRouteInfo<void> {
  const OrdersRoute({List<PageRouteInfo>? children})
      : super(
          OrdersRoute.name,
          initialChildren: children,
        );

  static const String name = 'OrdersRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OtpScreen]
class OtpRoute extends PageRouteInfo<OtpRouteArgs> {
  OtpRoute({
    Key? key,
    String? name,
    String? email,
    String? password,
    String? phone,
    List<PageRouteInfo>? children,
  }) : super(
          OtpRoute.name,
          args: OtpRouteArgs(
            key: key,
            name: name,
            email: email,
            password: password,
            phone: phone,
          ),
          initialChildren: children,
        );

  static const String name = 'OtpRoute';

  static const PageInfo<OtpRouteArgs> page = PageInfo<OtpRouteArgs>(name);
}

class OtpRouteArgs {
  const OtpRouteArgs({
    this.key,
    this.name,
    this.email,
    this.password,
    this.phone,
  });

  final Key? key;

  final String? name;

  final String? email;

  final String? password;

  final String? phone;

  @override
  String toString() {
    return 'OtpRouteArgs{key: $key, name: $name, email: $email, password: $password, phone: $phone}';
  }
}

/// generated route for
/// [PaymentScreen]
class PaymentRoute extends PageRouteInfo<PaymentRouteArgs> {
  PaymentRoute({
    Key? key,
    String? baseurl,
    List<PageRouteInfo>? children,
  }) : super(
          PaymentRoute.name,
          args: PaymentRouteArgs(
            key: key,
            baseurl: baseurl,
          ),
          initialChildren: children,
        );

  static const String name = 'PaymentRoute';

  static const PageInfo<PaymentRouteArgs> page =
      PageInfo<PaymentRouteArgs>(name);
}

class PaymentRouteArgs {
  const PaymentRouteArgs({
    this.key,
    this.baseurl,
  });

  final Key? key;

  final String? baseurl;

  @override
  String toString() {
    return 'PaymentRouteArgs{key: $key, baseurl: $baseurl}';
  }
}

/// generated route for
/// [ProductScreen]
class ProductRoute extends PageRouteInfo<ProductRouteArgs> {
  ProductRoute({
    Key? key,
    CategoryAndProductsModel? product,
    List<PageRouteInfo>? children,
  }) : super(
          ProductRoute.name,
          args: ProductRouteArgs(
            key: key,
            product: product,
          ),
          initialChildren: children,
        );

  static const String name = 'ProductRoute';

  static const PageInfo<ProductRouteArgs> page =
      PageInfo<ProductRouteArgs>(name);
}

class ProductRouteArgs {
  const ProductRouteArgs({
    this.key,
    this.product,
  });

  final Key? key;

  final CategoryAndProductsModel? product;

  @override
  String toString() {
    return 'ProductRouteArgs{key: $key, product: $product}';
  }
}

/// generated route for
/// [ProjectsScreen]
class ProjectsRoute extends PageRouteInfo<void> {
  const ProjectsRoute({List<PageRouteInfo>? children})
      : super(
          ProjectsRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProjectsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RegisterScreen]
class RegisterRoute extends PageRouteInfo<void> {
  const RegisterRoute({List<PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [WishListScreen]
class WishListRoute extends PageRouteInfo<void> {
  const WishListRoute({List<PageRouteInfo>? children})
      : super(
          WishListRoute.name,
          initialChildren: children,
        );

  static const String name = 'WishListRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [UserProjectScreen]
class UserProjectRoute extends PageRouteInfo<UserProjectRouteArgs> {
  UserProjectRoute({
    Key? key,
    UserProjectsModel? project,
    List<PageRouteInfo>? children,
  }) : super(
          UserProjectRoute.name,
          args: UserProjectRouteArgs(
            key: key,
            project: project,
          ),
          initialChildren: children,
        );

  static const String name = 'UserProjectRoute';

  static const PageInfo<UserProjectRouteArgs> page =
      PageInfo<UserProjectRouteArgs>(name);
}

class UserProjectRouteArgs {
  const UserProjectRouteArgs({
    this.key,
    this.project,
  });

  final Key? key;

  final UserProjectsModel? project;

  @override
  String toString() {
    return 'UserProjectRouteArgs{key: $key, project: $project}';
  }
}

/// generated route for
/// [ContactUsScreen]
class ContactUsRoute extends PageRouteInfo<void> {
  const ContactUsRoute({List<PageRouteInfo>? children})
      : super(
          ContactUsRoute.name,
          initialChildren: children,
        );

  static const String name = 'ContactUsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

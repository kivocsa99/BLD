import 'package:bld/presentation/components/rhombus_clipper.dart';
import 'package:bld/routes/app_route.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'dart:math' as math;
import 'package:easy_localization/easy_localization.dart';
import 'firebase_options.dart';
//notes for ali
//Should Review the ads

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await EasyLocalization.ensureInitialized();

  await Hive.initFlutter();
  await Hive.openBox("setting");
  await Hive.openBox("project");
  await Hive.openBox("category");
  runApp(EasyLocalization(
    path: "assets",
    supportedLocales: const [
      Locale("ar"),
      Locale("en"),
    ],
    child: ProviderScope(
      child: MainTree(),
    ),
  ));
}

class MainTree extends StatelessWidget {
  final _appRouter = AppRouter();

  MainTree({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "BLD",
      debugShowCheckedModeBanner: false,
      routerConfig: _appRouter.config(),
    );
  }
}

class SplashScreen extends HookWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = useState(100.0);
    final changeOffset = useMemoized(() async => await Future.delayed(
        const Duration(milliseconds: 300), () => size.value = 150));
    final animation =
        useAnimationController(duration: const Duration(milliseconds: 300));
    final rhombuseffect =
        Tween<double>(begin: 0.0, end: math.pi / 2).animate(animation);
    useFuture(changeOffset);

    return LayoutBuilder(
      builder: (context, constrains) {
        return Container(
          color: Colors.white,
          height: constrains.maxHeight,
          width: constrains.maxWidth,
          child: Center(
            child: ClipPath(
              clipper: RhombusClipper(rhombuseffect.value),
              child: AnimatedContainer(
                curve: Curves.linear,
                duration: const Duration(milliseconds: 800),
                onEnd: () {},
                width: size.value,
                height: size.value,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0xff254955), Color(0xff3B788B)]),
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

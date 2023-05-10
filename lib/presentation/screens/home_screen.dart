import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../application/provider/homepage.provider.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../../domain/homepagemodel/model/homepagemodel.dart';

@RoutePage()
class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageIndex = useState(0);
    final setting = Hive.box("setting");
    final apitoken = setting.get("apitoken");
    final homeprovider = ref.watch(gethomeProvider(apitoken));
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
              onPressed: () {},
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
              onPressed: () {},
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
              onPressed: () {},
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
              onPressed: () {},
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
        builder: (context, constraints) {
          return Container(
            height: constraints.maxHeight,
            width: constraints.maxWidth,
            color: Colors.white,
            child: homeprovider.when(
                data: (data) {
                  return data.fold((l) => Text(l.toString()), (r) {
                    print(r);
                    final HomePageModel homemodel = r;
                    return Text(homemodel.toString());
                  });
                },
                error: (error, stacktrace) => Text(error.toString()),
                loading: () => const SpinKitCubeGrid(
                      color: Colors.blue,
                    )),
          );
        },
      ),
    ));
  }
}

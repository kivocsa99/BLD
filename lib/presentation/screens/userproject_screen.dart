import 'package:auto_route/auto_route.dart';
import 'package:bld/domain/files/model/filesmodel.dart';
import 'package:bld/domain/projects/model/userprojectsmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:transparent_image/transparent_image.dart';

import '../../constatns.dart';
import '../components/scrollglowbehavior.dart';

@RoutePage()
class UserProjectScreen extends HookWidget {
  final UserProjectsModel? project;

  const UserProjectScreen({super.key, this.project});

  @override
  Widget build(BuildContext context) {
    final snakKey = useState(GlobalKey<ScaffoldMessengerState>());
    final isLoading = useState(false);
    final selectedimage = useState("$storageUrl${project!.files![0]}");
    return Stack(
      children: [
        SafeArea(
          child: ScaffoldMessenger(
            key: snakKey.value,
            child: Scaffold(
              resizeToAvoidBottomInset: false,
              backgroundColor: const Color(0xffF2F2F2),
              body: LayoutBuilder(
                builder: (context, constraints) {
                  return Container(
                    color: const Color(0xffF2F2F2),
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
                                  onTap: () => context.router.pop(),
                                  child: Container(
                                    decoration: const BoxDecoration(
                                        color: Color(0xffDEF0F5),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15.0))),
                                    width: 42,
                                    height: 42,
                                    child: Center(
                                      child: Image.asset("assets/back.png"),
                                    ),
                                  ),
                                ),
                                Text(
                                  project!.name!,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                const SizedBox(
                                  width: 42,
                                  height: 42,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Expanded(
                            child: ScrollConfiguration(
                              behavior: GlowBehavior(),
                              child: ListView(
                                keyboardDismissBehavior:
                                    ScrollViewKeyboardDismissBehavior.onDrag,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    height: 200,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Stack(
                                      children: [
                                        Image.asset(
                                          "assets/Logo.png",
                                          fit: BoxFit.fitWidth,
                                        ),
                                        Positioned(
                                          right: 10,
                                          top: 60,
                                          left: 0,
                                          bottom: 0,
                                          child: Container(
                                            width: 40,
                                            height: 40,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                            child: Center(
                                              child: Image.asset(
                                                  "assets/next.png"),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  SizedBox(
                                    height: 50,
                                    width: double.infinity,
                                    child: ListView.separated(
                                      itemCount: project!.files!.length,
                                      separatorBuilder: (context, index) {
                                        return const SizedBox(
                                          width: 20,
                                        );
                                      },
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (context, index) {
                                        final FilesModel image =
                                            project!.files![index];
                                        return Container(
                                          width: 50,
                                          height: 50,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(15)),
                                          child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(15.0),
                                              child: FadeInImage.memoryNetwork(
                                                placeholder: kTransparentImage,
                                                image:
                                                    "$storageUrl${image.name}",
                                                fit: BoxFit.cover,
                                              )),
                                        );
                                      },
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 120,
                                        color: Color(0xffDEF0F5),
                                        child:
                                            Center(child: Text("Project Info")),
                                      ),
                                      Container(
                                        height: 40,
                                        width: 120,
                                        color: Color(0xffDEF0F5),
                                        child: Center(
                                            child: Text("Orders History")),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
        visibile(
            height: MediaQuery.of(context).size.height, loding: isLoading.value)
      ],
    );
  }
}

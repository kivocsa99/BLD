import 'package:auto_route/auto_route.dart';
import 'package:bld/domain/files/model/filesmodel.dart';
import 'package:bld/domain/projects/model/userprojectsmodel.dart';
import 'package:bld/presentation/components/projectinfo.dart';
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
    final animatedlist = useState<List<Widget>>([
      ProjectInfo(
        project: project,
      )
    ]);
    final snakKey = useState(GlobalKey<ScaffoldMessengerState>());
    final isLoading = useState(false);
    final imageindex = useState(0);
    final selectedIndex = useState(0);
    final selectedimage =
        useState("$storageUrl${project!.files![imageindex.value].name}");
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
                                    width: constraints.maxWidth - 50,
                                    height: 200,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Stack(
                                      clipBehavior: Clip.none,
                                      children: [
                                        Container(
                                          width: double.infinity,
                                          height: 200,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(15)),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            child: FadeInImage.memoryNetwork(
                                              placeholder: kTransparentImage,
                                              image: selectedimage.value,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Visibility(
                                          visible: imageindex.value !=
                                                  project!.files!.length - 1
                                              ? true
                                              : false,
                                          child: Align(
                                            alignment: Alignment.centerRight,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(24.0),
                                              child: GestureDetector(
                                                onTap: () {
                                                  imageindex.value =
                                                      imageindex.value + 1;
                                                  selectedimage.value =
                                                      "$storageUrl${project!.files![imageindex.value].name}";
                                                },
                                                child: Container(
                                                    width: 45,
                                                    height: 45,
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(15)),
                                                    child: Image.asset(
                                                        "assets/next.png")),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Visibility(
                                          visible: imageindex.value != 0
                                              ? true
                                              : false,
                                          child: Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(24.0),
                                              child: GestureDetector(
                                                onTap: () {
                                                  imageindex.value =
                                                      imageindex.value - 1;
                                                  selectedimage.value =
                                                      "$storageUrl${project!.files![imageindex.value].name}";
                                                },
                                                child: Container(
                                                    width: 45,
                                                    height: 45,
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(15)),
                                                    child: Image.asset(
                                                        "assets/backarrow.png")),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  SizedBox(
                                    height: 50,
                                    width: double.infinity,
                                    child: ScrollConfiguration(
                                      behavior: GlowBehavior(),
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
                                          return GestureDetector(
                                            onTap: () {
                                              imageindex.value = index;
                                              selectedimage.value =
                                                  "$storageUrl${project!.files![imageindex.value].name}";
                                            },
                                            child: Container(
                                              width: 50,
                                              height: 50,
                                              padding: const EdgeInsets.all(5),
                                              decoration: BoxDecoration(
                                                  border: imageindex.value ==
                                                          index
                                                      ? Border.all(
                                                          width: 3,
                                                          color: const Color(
                                                              0xff3B788B))
                                                      : null,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          15)),
                                              child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                  child:
                                                      FadeInImage.memoryNetwork(
                                                    placeholder:
                                                        kTransparentImage,
                                                    image:
                                                        "$storageUrl${image.name}",
                                                    fit: BoxFit.cover,
                                                  )),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 120,
                                        color: const Color(0xffDEF0F5),
                                        child: const Center(
                                            child: Text("Project Info")),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        height: 40,
                                        width: 120,
                                        color: const Color(0xffDEF0F5),
                                        child: const Center(
                                            child: Text("Orders History")),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  AnimatedSwitcher(
                                    duration: const Duration(milliseconds: 500),
                                    child:
                                        animatedlist.value[selectedIndex.value],
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

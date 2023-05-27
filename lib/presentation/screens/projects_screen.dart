import 'package:auto_route/auto_route.dart';
import 'package:bld/application/provider/project.repository.provider.dart';
import 'package:bld/constatns.dart';
import 'package:bld/domain/projects/model/userprojectsmodel.dart';
import 'package:bld/presentation/components/projectcontainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../routes/app_route.dart';
import '../components/error_widget.dart';

@RoutePage()
class ProjectsScreen extends HookConsumerWidget {
  const ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userProjects = ref.watch(getprojectsProvider(apitoken));
    final scaffoldKey = useState(GlobalKey<ScaffoldMessengerState>());

    return userProjects.when(
        data: (response) => response.fold(
                (l) => ScaffoldMessenger(
                      key: scaffoldKey.value,
                      child: Scaffold(
                        backgroundColor: const Color(0xFFF2F2F2),
                        body: SomeThingWentWrongErrorWidget(
                          refresh: () => ref
                              .refresh(getprojectsProvider(apitoken).future)
                              .then((value) => value.fold(
                                  (l) => l
                                              .toString() ==
                                          "ApiFailures.noResponse()"
                                      ? showSnack(
                                          title:
                                              "Please Check Your internet connection",
                                          scaffoldMessengerKey:
                                              scaffoldKey.value)
                                      : showSnack(
                                          title:
                                              "Error Occured please contact us",
                                          scaffoldMessengerKey:
                                              scaffoldKey.value),
                                  (r) => null)),
                        ),
                      ),
                    ), (r) {
              final List<UserProjectsModel> projects = r;
              return projects.isEmpty
                  ? RefreshIndicator(
                      onRefresh: () => ref
                          .refresh(getprojectsProvider(apitoken).future)
                          .then((value) => value.fold(
                              (l) => l.toString() == "ApiFailures.noResponse()"
                                  ? showSnack(
                                      title:
                                          "Please Check Your internet connection",
                                      scaffoldMessengerKey: scaffoldKey.value)
                                  : showSnack(
                                      title: "Error Occured please contact us",
                                      scaffoldMessengerKey: scaffoldKey.value),
                              (r) => null)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: double.infinity,
                                height: 270,
                                child: Image.asset(
                                  "assets/order.png",
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                "No Projects Yet!",
                                style: TextStyle(
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                  "Start a creating a project to\nOrganize all your invoices and orders",
                                  style: TextStyle(fontSize: 20.0)),
                              const SizedBox(
                                height: 20,
                              ),
                              GestureDetector(
                                onTap: () {
                                  context.router.push(NewProjectRoute());
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      gradient: const LinearGradient(
                                          colors: [
                                            Color(0xff4365D7),
                                            Color(0xff324CA3)
                                          ],
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter)),
                                  width: double.infinity,
                                  height: 50,
                                  child: const Center(
                                    child: Text(
                                      "Create a Project",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                              )
                            ]),
                      ),
                    )
                  : RefreshIndicator(
                      onRefresh: () => ref
                          .refresh(getprojectsProvider(apitoken).future)
                          .then((value) => value.fold(
                              (l) => l.toString() == "ApiFailures.noResponse()"
                                  ? showSnack(
                                      title:
                                          "Please Check Your internet connection",
                                      scaffoldMessengerKey: scaffoldKey.value)
                                  : showSnack(
                                      title: "Error Occured please contact us",
                                      scaffoldMessengerKey: scaffoldKey.value),
                              (r) => null)),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 25,
                        ),
                        child: ListView.separated(
                          separatorBuilder: (context, index) {
                            return const SizedBox(
                              height: 10,
                            );
                          },
                          itemCount: projects.length,
                          itemBuilder: (context, index) {
                            final List<UserProjectsModel> projects = r;
                            return ProjectContainer(
                              project: projects[index],
                            );
                          },
                        ),
                      ),
                    );
            }),
        error: (error, stackTrace) => ScaffoldMessenger(
              key: scaffoldKey.value,
              child: Scaffold(
                backgroundColor: const Color(0xFFF2F2F2),
                body: SomeThingWentWrongErrorWidget(
                  refresh: () => ref
                      .refresh(getprojectsProvider(apitoken).future)
                      .then((value) => value.fold(
                          (l) => l.toString() == "ApiFailures.noResponse()"
                              ? showSnack(
                                  title:
                                      "Please Check Your internet connection",
                                  scaffoldMessengerKey: scaffoldKey.value)
                              : showSnack(
                                  title: "Error Occured please contact us",
                                  scaffoldMessengerKey: scaffoldKey.value),
                          (r) => null)),
                ),
              ),
            ),
        loading: () => const Center(
              child: SpinKitCubeGrid(
                color: Colors.blue,
              ),
            ));
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:bld/application/provider/consultation.repository.provider.dart';
import 'package:bld/domain/consultation/model/consultationmodel.dart';
import 'package:bld/presentation/components/consultationcontainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../constatns.dart';
import '../../routes/app_route.dart';
import '../components/error_widget.dart';

@RoutePage()
class ConsultationScreen extends HookConsumerWidget {
  const ConsultationScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final consultationitems = ref.watch(getconsultationProvider);
    final scaffoldKey = useState(GlobalKey<ScaffoldMessengerState>());
    return consultationitems.when(
        data: (response) => response.fold(
                (l) => ScaffoldMessenger(
                      key: scaffoldKey.value,
                      child: Scaffold(
                        backgroundColor: const Color(0xFFF2F2F2),
                        body: SomeThingWentWrongErrorWidget(
                          refresh: () => ref
                              .refresh(getconsultationProvider.future)
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
              final List<ConsultationModel> consultationreq = r;
              return consultationreq.isEmpty
                  ? RefreshIndicator(
                      onRefresh: () => ref
                          .refresh(getconsultationProvider.future)
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
                                height: 250,
                                child: Image.asset(
                                  "assets/consultation.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                "No Consultations Yet!",
                                style: TextStyle(
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                  "Start a Consultations with one\n              *Of our experts",
                                  style: TextStyle(fontSize: 20.0)),
                              const SizedBox(
                                height: 20,
                              ),
                              GestureDetector(
                                onTap: () {
                                  context.router
                                      .push(const NewConsultationRoute());
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
                                      "Consult an Expert",
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
                          .refresh(getconsultationProvider.future)
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
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height - 210,
                        width: double.infinity,
                        child: Scaffold(
                          backgroundColor: const Color(0xFFF2F2F2),
                          floatingActionButton: GestureDetector(
                            onTap: () => context.router
                                .push(const NewConsultationRoute()),
                            child: Container(
                              width: 55,
                              height: 55,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color(0xff4264D4),
                              ),
                              child: const Center(
                                  child: Icon(
                                FontAwesomeIcons.plus,
                                color: Colors.white,
                              )),
                            ),
                          ),
                          body: Padding(
                            padding: const EdgeInsets.only(
                              top: 25,
                            ),
                            child: ListView.separated(
                              separatorBuilder: (context, index) {
                                return const SizedBox(
                                  height: 10,
                                );
                              },
                              itemCount: consultationreq.length,
                              itemBuilder: (context, index) {
                                return ConsultationContainer(
                                  consultation: consultationreq[index],
                                );
                              },
                            ),
                          ),
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
                      .refresh(getconsultationProvider.future)
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

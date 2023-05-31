import 'package:auto_route/auto_route.dart';
import 'package:bld/domain/user/model/usermodel.dart';
import 'package:bld/routes/app_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:transparent_image/transparent_image.dart';

import '../../application/provider/homepage.provider.dart';
import '../../constatns.dart';
import '../../domain/homepagemodel/model/homepagemodel.dart';
import '../../domain/suppliers/model/suppliersmodel.dart';
import '../components/adsbanner.dart';
import '../components/horizontalproducts.dart';
import '../components/scrollglowbehavior.dart';

@RoutePage()
class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeprovider = ref.watch(gethomeProvider(apitoken));
    return LayoutBuilder(
      builder: (context, constraints) {
        return homeprovider.when(
            data: (data) {
              return data.fold((l) => Text(l.toString()), (r) {
                final HomePageModel homemodel = r;
                final UserModel user = homemodel.User!;

                final List<SuppliersModel> suppliers =
                    homemodel.RandomSuppliers!;
                return RefreshIndicator(
                  onRefresh: () =>
                      ref.refresh(gethomeProvider(apitoken).future),
                  child: ScrollConfiguration(
                    behavior: GlowBehavior(),
                    child: ListView(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: 62,
                          child: Row(
                            children: [
                              SizedBox(
                                height: 42,
                                width: 42,
                                child: ClipOval(
                                  child: Image.asset("assets/Logo.png"),
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Welcome, ${user.name} !",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          height: 90,
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 100,
                                width: constraints.maxWidth / 2 - 20,
                                decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20.0)),
                                    gradient: LinearGradient(
                                        begin: Alignment.bottomLeft,
                                        end: Alignment.topRight,
                                        colors: [
                                          Color(0xff2562B9),
                                          Color(0xff568EDB),
                                        ])),
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: 34,
                                            height: 34,
                                            decoration: const BoxDecoration(
                                              color: Colors.white,
                                              shape: BoxShape.circle,
                                            ),
                                            child: Center(
                                              child: Image.asset(
                                                  "assets/orders.png"),
                                            ),
                                          ),
                                          const Text(
                                            "Total Orders",
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.white),
                                          )
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            bottom: 15.0, right: 10),
                                        child: Text(
                                          "${user.customer_orders!.length > 100 ? "100 +" : user.customer_orders!.length}",
                                          style: const TextStyle(
                                              fontSize: 17,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 100,
                                width: constraints.maxWidth / 2 - 20,
                                decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20.0)),
                                    gradient: LinearGradient(
                                        begin: Alignment.bottomLeft,
                                        end: Alignment.topRight,
                                        colors: [
                                          Color(0xff641ABA),
                                          Color(0xff9A07E8),
                                        ])),
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: 34,
                                            height: 34,
                                            decoration: const BoxDecoration(
                                              color: Colors.white,
                                              shape: BoxShape.circle,
                                            ),
                                            child: Center(
                                              child: Image.asset(
                                                  "assets/projects.png"),
                                            ),
                                          ),
                                          const Text(
                                            "Total Projects",
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.white),
                                          )
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            bottom: 15.0, right: 10),
                                        child: Text(
                                          "${user.projects!.length > 100 ? "100 +" : user.projects!.length}",
                                          style: const TextStyle(
                                              fontSize: 17,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: 100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () => context.router.push(
                                    NewOrdersRoute(comingroute: "homescreen")),
                                child: Container(
                                  height: 100,
                                  width: constraints.maxWidth / 3.5,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(14)),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Image.asset("assets/rowshopping.png"),
                                      const Text("Start Shopping")
                                    ],
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () =>
                                    context.router.push(NewProjectRoute()),
                                child: Container(
                                  height: 100,
                                  width: constraints.maxWidth / 3.5,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(14)),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Image.asset("assets/rowProject.png"),
                                      const Text("Create Project")
                                    ],
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  context.router.push(
                                    const NewConsultationRoute(),
                                  );
                                },
                                child: Container(
                                  height: 100,
                                  width: constraints.maxWidth / 3.5,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(14)),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Image.asset("assets/rowconsult.png"),
                                      const Text("Consult an\n    Expert")
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        AdsBanner(
                          adsList: homemodel.Ads,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Best Deals",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.normal),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        HorizontalProducts(
                          products: homemodel.CategoryAndProducts,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        AdsBanner(
                          adsList: homemodel.Ads,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Popular Suppliers",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.normal),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: 210,
                          child: ScrollConfiguration(
                            behavior: GlowBehavior(),
                            child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              separatorBuilder: (context, index) =>
                                  const SizedBox(
                                width: 10,
                              ),
                              itemCount: suppliers.length,
                              itemBuilder: (context, index) {
                                final SuppliersModel supplier =
                                    suppliers[index];
                                return Stack(
                                  clipBehavior: Clip.antiAlias,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          color: const Color.fromRGBO(
                                              255, 255, 255, 1),
                                          borderRadius:
                                              BorderRadius.circular(25)),
                                      width: 280,
                                      height: 170,
                                      child: FadeInImage.memoryNetwork(
                                        placeholder: kTransparentImage,
                                        image: "$storageUrl${supplier.image}",
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Positioned(
                                      left: 30,
                                      right: 30,
                                      bottom: 0,
                                      child: Container(
                                        padding: const EdgeInsets.all(15),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(25)),
                                        height: 80,
                                        width: 200,
                                        child: Row(
                                          children: [
                                            Container(
                                              height: 46,
                                              width: 46,
                                              padding: const EdgeInsets.all(5),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(25),
                                                  border: Border.all(
                                                      width: 2,
                                                      color: const Color(
                                                          0xff3B788B))),
                                              child: Center(
                                                  child:
                                                      FadeInImage.memoryNetwork(
                                                placeholder: kTransparentImage,
                                                image:
                                                    "$storageUrl${supplier.image}",
                                              )),
                                            ),
                                            const SizedBox(
                                              width: 15,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  supplier.name!,
                                                  style: const TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                const SizedBox(
                                                  height: 5,
                                                ),
                                                Text(
                                                  supplier.address!,
                                                  style: const TextStyle(
                                                      fontSize: 14,
                                                      color: Colors.grey,
                                                      fontWeight:
                                                          FontWeight.normal),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                );
                              },
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                );
              });
            },
            error: (error, stacktrace) => Text(error.toString()),
            loading: () => const Center(
                  child: SpinKitCubeGrid(
                    color: Colors.blue,
                  ),
                ));
      },
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:bld/application/provider/orders.repository.provider.dart';
import 'package:bld/domain/searchpage/searchpagemodel.dart';
import 'package:bld/domain/suppliers/model/suppliersmodel.dart';
import 'package:bld/presentation/components/adsbanner.dart';
import 'package:bld/presentation/components/categorygrid.dart';
import 'package:bld/presentation/components/searchbar.dart';
import 'package:bld/routes/app_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:transparent_image/transparent_image.dart';

import '../../constatns.dart';
import '../components/error_widget.dart';
import '../components/horizontalproducts.dart';
import '../components/scrollglowbehavior.dart';

@RoutePage()
class NewOrdersScreen extends HookConsumerWidget {
  final String? comingroute;
  const NewOrdersScreen({super.key, this.comingroute});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchPage = ref.watch(getSearchPageProvider);
    final scaffoldKey = useState(GlobalKey<ScaffoldMessengerState>());
    final isSearch = useState(0);
    final searchController = useTextEditingController(text: "");
    final supplierscrollController = useScrollController();
    final suppliersprovider = ref.watch(getSuppliersProvider(""));
    supplierscrollController.addListener(
      () {
        if (supplierscrollController.position.pixels ==
            supplierscrollController.position.maxScrollExtent) {
          // User has scrolled to the end
          print("hello");
        }
      },
    );
    return SafeArea(
      child: ScaffoldMessenger(
        key: scaffoldKey.value,
        child: Scaffold(
          body: LayoutBuilder(
            builder: (context, constraints) {
              print("h${constraints.maxWidth}");
              return searchPage.when(
                  data: (response) => response.fold(
                          (l) => SomeThingWentWrongErrorWidget(
                                refresh: () => ref
                                    .refresh(getSearchPageProvider.future)
                                    .then((value) => value.fold((l) {
                                          print(l);
                                          return l.toString() ==
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
                                                      scaffoldKey.value);
                                        }, (r) => null)),
                              ), (r) {
                        final SearchPageModel searchPageModel = r;

                        return SizedBox(
                          width: constraints.maxWidth,
                          height: constraints.maxHeight,
                          child: RefreshIndicator(
                            onRefresh: () =>
                                ref.refresh(getSearchPageProvider.future),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 25.0, right: 25.0),
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  SizedBox(
                                    width: double.infinity,
                                    height: 62,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        GestureDetector(
                                          onTap: () =>
                                              comingroute != "projectscreen"
                                                  ? context.router.pop()
                                                  : context.router.replaceAll(
                                                      [const MainRoute()]),
                                          child: Container(
                                            decoration: const BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(15.0))),
                                            width: 42,
                                            height: 42,
                                            child: Center(
                                              child: Image.asset(
                                                  "assets/close.png"),
                                            ),
                                          ),
                                        ),
                                        const Center(
                                          child: Text(
                                            "Search",
                                            style: TextStyle(
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
                                              child: Image.asset(
                                                  "assets/cart.png")),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 25,
                                  ),
                                  Expanded(
                                    child: ScrollConfiguration(
                                      behavior: GlowBehavior(),
                                      child: ListView(
                                        children: [
                                          SizedBox(
                                            height: 46,
                                            child: OrderSearchBar(
                                              controller: searchController,
                                              finished: (value) {
                                                isSearch.value = 1;
                                                print(isSearch.value);
                                              },
                                              onclick: () {
                                                if (isSearch.value == 1) {
                                                  isSearch.value = 0;
                                                }
                                                print(isSearch.value);
                                              },
                                              width: double.infinity,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 40,
                                          ),
                                          CategoryGrid(
                                            width: constraints.maxWidth,
                                            categories:
                                                searchPageModel.Categories,
                                          ),
                                          const SizedBox(
                                            height: 30,
                                          ),
                                          AdsBanner(
                                            adsList: searchPageModel.Ads,
                                          ),
                                          const SizedBox(
                                            height: 30,
                                          ),
                                          const Align(
                                            alignment: Alignment.topLeft,
                                            child: Text(
                                              "Recommended for you",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight:
                                                      FontWeight.normal),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          HorizontalProducts(
                                            products:
                                                searchPageModel.RandomProducts,
                                          ),
                                          const SizedBox(
                                            height: 30,
                                          ),
                                          const Align(
                                            alignment: Alignment.topLeft,
                                            child: Text(
                                              "All Suppliers",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight:
                                                      FontWeight.normal),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          suppliersprovider.when(
                                              data:
                                                  (data) => data.fold(
                                                          (l) => Text(
                                                              l.toString()),
                                                          (r) {
                                                        List<SuppliersModel>
                                                            suppliers = r;
                                                        return SingleChildScrollView(
                                                          child: ListView
                                                              .separated(
                                                            physics:
                                                                const NeverScrollableScrollPhysics(),
                                                            shrinkWrap: true,
                                                            separatorBuilder:
                                                                (context,
                                                                    index) {
                                                              return const SizedBox(
                                                                height: 50,
                                                              );
                                                            },
                                                            itemCount: suppliers
                                                                .length,
                                                            itemBuilder:
                                                                (context,
                                                                    index) {
                                                              final SuppliersModel
                                                                  supplier =
                                                                  suppliers[
                                                                      index];
                                                              return Stack(
                                                                clipBehavior:
                                                                    Clip.none,
                                                                children: [
                                                                  Container(
                                                                    decoration: BoxDecoration(
                                                                        color: const Color.fromRGBO(
                                                                            255,
                                                                            255,
                                                                            255,
                                                                            1),
                                                                        borderRadius:
                                                                            BorderRadius.circular(25)),
                                                                    width: double
                                                                        .infinity,
                                                                    height: 170,
                                                                    child: FadeInImage
                                                                        .memoryNetwork(
                                                                      placeholder:
                                                                          kTransparentImage,
                                                                      image:
                                                                          "$storageUrl${supplier.image}",
                                                                      fit: BoxFit
                                                                          .fill,
                                                                    ),
                                                                  ),
                                                                  Positioned(
                                                                    left: 30,
                                                                    right: 30,
                                                                    bottom: -20,
                                                                    child:
                                                                        Container(
                                                                      padding:
                                                                          const EdgeInsets.all(
                                                                              15),
                                                                      decoration: BoxDecoration(
                                                                          color: Colors
                                                                              .white,
                                                                          borderRadius:
                                                                              BorderRadius.circular(25)),
                                                                      height:
                                                                          80,
                                                                      width:
                                                                          200,
                                                                      child:
                                                                          Row(
                                                                        children: [
                                                                          Container(
                                                                            height:
                                                                                46,
                                                                            width:
                                                                                46,
                                                                            padding:
                                                                                const EdgeInsets.all(5),
                                                                            decoration:
                                                                                BoxDecoration(borderRadius: BorderRadius.circular(25), border: Border.all(width: 2, color: const Color(0xff3B788B))),
                                                                            child: Center(
                                                                                child: FadeInImage.memoryNetwork(
                                                                              placeholder: kTransparentImage,
                                                                              image: "$storageUrl${supplier.image}",
                                                                            )),
                                                                          ),
                                                                          const SizedBox(
                                                                            width:
                                                                                15,
                                                                          ),
                                                                          Column(
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              Text(
                                                                                supplier.name!,
                                                                                style: const TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
                                                                              ),
                                                                              const SizedBox(
                                                                                height: 5,
                                                                              ),
                                                                              Text(
                                                                                supplier.address!,
                                                                                style: const TextStyle(fontSize: 14, color: Colors.grey, fontWeight: FontWeight.normal),
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
                                                        );
                                                      }),
                                              error: (error, stackTrace) =>
                                                  Text(error.toString()),
                                              loading: () => const Center(
                                                    child: SpinKitCubeGrid(
                                                      color: Colors.blue,
                                                    ),
                                                  )),
                                          const SizedBox(
                                            height: 50,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                  error: (error, stackTrace) => SomeThingWentWrongErrorWidget(
                        refresh: () => ref
                            .refresh(getSearchPageProvider.future)
                            .then((value) => value.fold(
                                (l) => l
                                            .toString() ==
                                        "ApiFailures.noResponse()"
                                    ? showSnack(
                                        title:
                                            "Please Check Your internet connection",
                                        scaffoldMessengerKey: scaffoldKey.value)
                                    : showSnack(
                                        title:
                                            "Error Occured please contact us",
                                        scaffoldMessengerKey:
                                            scaffoldKey.value),
                                (r) => null)),
                      ),
                  loading: () => const Center(
                        child: SpinKitCubeGrid(
                          color: Colors.blue,
                        ),
                      ));
            },
          ),
        ),
      ),
    );
  }
}

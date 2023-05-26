import 'package:auto_route/auto_route.dart';
import 'package:bld/application/provider/orders.repository.provider.dart';
import 'package:bld/domain/searchpage/searchpagemodel.dart';
import 'package:bld/presentation/components/adsbanner.dart';
import 'package:bld/presentation/components/categorygrid.dart';
import 'package:bld/presentation/components/searchbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../constatns.dart';
import '../components/error_widget.dart';
import '../components/horizontalproducts.dart';

@RoutePage()
class NewOrdersScreen extends HookConsumerWidget {
  const NewOrdersScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchPage = ref.watch(getSearchPageProvider);
    final scaffoldKey = useState(GlobalKey<ScaffoldMessengerState>());
    final isSearch = useState(0);
    final searchController = useTextEditingController(text: "");
    return SafeArea(
      child: ScaffoldMessenger(
        key: scaffoldKey.value,
        child: Scaffold(
          body: LayoutBuilder(
            builder: (context, constraints) {
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

                        return RefreshIndicator(
                          onRefresh: () =>
                              ref.refresh(getSearchPageProvider.future),
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 25.0, right: 25.0),
                            child: ListView(
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
                                        onTap: () => context.router.pop(),
                                        child: Container(
                                          decoration: const BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(15.0))),
                                          width: 42,
                                          height: 42,
                                          child: Center(
                                            child:
                                                Image.asset("assets/close.png"),
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
                                            child:
                                                Image.asset("assets/cart.png")),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 25,
                                ),
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
                                  categories: searchPageModel.Categories,
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
                                        fontWeight: FontWeight.normal),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                HorizontalProducts(
                                  products: searchPageModel.RandomProducts,
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
                                        fontWeight: FontWeight.normal),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                              ],
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

import 'package:auto_route/auto_route.dart';
import 'package:bld/application/provider/orders.repository.provider.dart';
import 'package:bld/constatns.dart';
import 'package:bld/domain/categoryandproductsmodel/categoryandproductsmodel.dart';
import 'package:bld/presentation/components/error_widget.dart';
import 'package:bld/routes/app_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:transparent_image/transparent_image.dart';
import '../components/searchbar.dart';

//supplier image
@RoutePage()
class CategoryScreen extends HookConsumerWidget {
  final String? categoryName;
  final String? categoryId;
  const CategoryScreen({this.categoryId, super.key, this.categoryName});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scrollController = useScrollController();
    final categoryItems = ref.watch(searchItemsProvider(
        supplierid: "", categoryid: categoryId!, title: ""));
    return SafeArea(
      child: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            return Container(
              width: constraints.maxWidth,
              height: constraints.maxHeight,
              color: const Color(0xffF2F2F2),
              child: categoryItems.when(
                  data: (data) => data.fold(
                          (l) => SomeThingWentWrongErrorWidget(
                                refresh: () => ref.watch(searchItemsProvider(
                                    supplierid: "",
                                    categoryid: categoryId!,
                                    title: "")),
                              ), (r) {
                        final List<CategoryAndProductsModel> categories = r;
                        return categories.isEmpty
                            ? const Center(
                                child: Text(
                                  "There are no products in this category",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            : Padding(
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
                                            onTap: () => context.router.pop(),
                                            child: Container(
                                              decoration: const BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              15.0))),
                                              width: 42,
                                              height: 42,
                                              child: Center(
                                                child: Image.asset(
                                                    "assets/back.png"),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Text(
                                              categoryName!,
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20),
                                            ),
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
                                    const SizedBox(
                                      height: 46,
                                      child: OrderSearchBar(),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Expanded(
                                      child: Column(
                                        children: [
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              "${categorybox.get("categoryproductcount")} Results",
                                              style: const TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Expanded(
                                            child: ListView.separated(
                                              separatorBuilder:
                                                  (context, index) {
                                                return const SizedBox(
                                                  height: 10,
                                                );
                                              },
                                              itemCount: categories.length,
                                              controller: scrollController,
                                              itemBuilder: (context, index) {
                                                final CategoryAndProductsModel
                                                    category =
                                                    categories[index];
                                                return GestureDetector(
                                                  onTap: () => context.router
                                                      .push(ProductRoute(
                                                          product: category)),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(25),
                                                        color: Colors.white),
                                                    width: double.infinity,
                                                    height: 85,
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              10.0),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Row(
                                                              children: [
                                                                Container(
                                                                    width: 70,
                                                                    height: 70,
                                                                    padding:
                                                                        const EdgeInsets.all(
                                                                            5),
                                                                    decoration: BoxDecoration(
                                                                        color: const Color(
                                                                            0xFFE2E2E2),
                                                                        borderRadius:
                                                                            BorderRadius.circular(
                                                                                15)),
                                                                    child: FadeInImage
                                                                        .memoryNetwork(
                                                                      placeholder:
                                                                          kTransparentImage,
                                                                      image:
                                                                          "$storageUrl${category.product!.image}",
                                                                      fit: BoxFit
                                                                          .contain,
                                                                    )),
                                                                const SizedBox(
                                                                  width: 10,
                                                                ),
                                                                Column(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Text(
                                                                      "${category.product!.name}",
                                                                      style: const TextStyle(
                                                                          color: Colors
                                                                              .black,
                                                                          fontSize:
                                                                              16,
                                                                          fontWeight:
                                                                              FontWeight.normal),
                                                                    ),
                                                                    const SizedBox(
                                                                      height: 5,
                                                                    ),
                                                                    Text(
                                                                      "JOD ${category.price}",
                                                                      style: const TextStyle(
                                                                          fontSize:
                                                                              16,
                                                                          color:
                                                                              Color(0xff3B788B)),
                                                                    )
                                                                  ],
                                                                )
                                                              ],
                                                            ),
                                                            Row(
                                                              children: [
                                                                const VerticalDivider(
                                                                  width: 1,
                                                                  color: Color(
                                                                      0xffDEF0F5),
                                                                ),
                                                                const SizedBox(
                                                                  width: 5,
                                                                ),
                                                                Container(
                                                                  height: 40,
                                                                  width: 60,
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .all(5),
                                                                  color: Colors
                                                                      .transparent,
                                                                  child: FadeInImage
                                                                      .memoryNetwork(
                                                                    placeholder:
                                                                        kTransparentImage,
                                                                    image:
                                                                        "$storageUrl${category.supplier!.image}",
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                )
                                                              ],
                                                            )
                                                          ]),
                                                    ),
                                                  ),
                                                );
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    )
                                  ],
                                ),
                              );
                      }),
                  error: (error, stackTrace) => SomeThingWentWrongErrorWidget(
                        refresh: () => ref.watch(searchItemsProvider(
                                supplierid: "",
                                categoryid: categoryId!,
                                title: "")
                            .future),
                      ),
                  loading: () => const Center(
                        child: SpinKitCubeGrid(
                          color: Colors.blue,
                        ),
                      )),
            );
          },
        ),
      ),
    );
  }
}

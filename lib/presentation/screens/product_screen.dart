import 'package:auto_route/auto_route.dart';
import 'package:bld/application/cart/addcart/add.cart.use.case.dart';
import 'package:bld/application/cart/addcart/add.cart.use.case.input.dart';
import 'package:bld/application/provider/orders.repository.provider.dart';
import 'package:bld/constatns.dart';
import 'package:bld/domain/cart/model/cartmodel.dart';
import 'package:bld/domain/categoryandproductsmodel/categoryandproductsmodel.dart';
import 'package:bld/routes/app_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:transparent_image/transparent_image.dart';

import '../components/scrollglowbehavior.dart';

@RoutePage()
class ProductScreen extends HookConsumerWidget {
  final CategoryAndProductsModel? product;
  const ProductScreen({super.key, this.product});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoading = useState(false);
    final getcartitems =
        ref.watch(getCartProvider(product!.supplier_id.toString()));
    final quantity = useState(1);
    final snakKey = useState(GlobalKey<ScaffoldMessengerState>());
    print(quantity.value);
    return Stack(
      children: [
        SafeArea(
          child: ScaffoldMessenger(
            key: snakKey.value,
            child: Scaffold(
              body: LayoutBuilder(
                builder: (context, constraints) {
                  return Container(
                    color: Colors.white,
                    width: constraints.maxWidth,
                    height: constraints.maxHeight,
                    child: Column(
                      children: [
                        Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 25.0, right: 25.0),
                            child: Scaffold(
                              backgroundColor: Colors.white,
                              floatingActionButtonLocation:
                                  FloatingActionButtonLocation.centerFloat,
                              floatingActionButton: getcartitems.when(
                                data: (data) => data.fold(
                                    (l) => GestureDetector(
                                          onTap: () => ref
                                              .refresh(getCartProvider(product!
                                                      .supplier_id
                                                      .toString())
                                                  .future)
                                              .then((value) => value.fold((l) {
                                                    isLoading.value = false;
                                                    return l.toString() ==
                                                            "ApiFailures.noResponse()"
                                                        ? showSnack(
                                                            title:
                                                                "Please Check Your internet connection",
                                                            scaffoldMessengerKey:
                                                                snakKey.value)
                                                        : showSnack(
                                                            title:
                                                                "Error Occured please contact us",
                                                            scaffoldMessengerKey:
                                                                snakKey.value);
                                                  }, (r) {
                                                    if (r.toString() ==
                                                        "Your cart is empty") {
                                                      isLoading.value = false;
                                                      return showSnack(
                                                          scaffoldMessengerKey:
                                                              snakKey.value,
                                                          title:
                                                              "Your cart is empty");
                                                    } else {
                                                      isLoading.value = false;
                                                    }
                                                  })),
                                          child: Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(25),
                                                  gradient:
                                                      const LinearGradient(
                                                          begin: Alignment
                                                              .topCenter,
                                                          end: Alignment
                                                              .bottomCenter,
                                                          colors: [
                                                        Color(0xff3B788B),
                                                        Color(0xff2B4D58)
                                                      ])),
                                              width: constraints.maxWidth / 2.5,
                                              height: 60,
                                              child: const Center(
                                                child: Text(
                                                  "Error While Loading Cart",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              )),
                                        ), (r) {
                                  if (r.toString() == "CART_IS_EMPTY") {
                                    return Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(25),
                                            gradient: const LinearGradient(
                                                begin: Alignment.topCenter,
                                                end: Alignment.bottomCenter,
                                                colors: [
                                                  Color(0xff3B788B),
                                                  Color(0xff2B4D58)
                                                ])),
                                        width: constraints.maxWidth / 2.5,
                                        height: 60,
                                        child: const Center(
                                          child: Text(
                                            "Your cart is empty",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ));
                                  } else {
                                    print(r);
                                    final List<CartModel> cart = r;
                                    num totalPrice = 0.0;
                                    for (var product in cart) {
                                      num productPrice = product.quantity! *
                                          product.supplier_product!.price!;
                                      totalPrice += productPrice;
                                    }
                                    return GestureDetector(
                                      onTap: () => context.router.push(
                                          CartRoute(
                                              supplierid: product!.supplier_id
                                                  .toString())),
                                      child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(25),
                                              gradient: const LinearGradient(
                                                  begin: Alignment.topCenter,
                                                  end: Alignment.bottomCenter,
                                                  colors: [
                                                    Color(0xff3B788B),
                                                    Color(0xff2B4D58)
                                                  ])),
                                          width: constraints.maxWidth / 2.3,
                                          height: 60,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Container(
                                                height: 45,
                                                width: 50,
                                                decoration: const BoxDecoration(
                                                    color: Colors.black26,
                                                    shape: BoxShape.circle),
                                                child: Center(
                                                    child: Text(
                                                        cart.length.toString(),
                                                        style: const TextStyle(
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold))),
                                              ),
                                              Text(
                                                "Cart : JOD $totalPrice",
                                                style: const TextStyle(
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )
                                            ],
                                          )),
                                    );
                                  }
                                }),
                                error: (error, stackTrace) => GestureDetector(
                                    onTap: () => ref
                                        .refresh(getCartProvider(
                                                product!.supplier_id.toString())
                                            .future)
                                        .then((value) => value.fold((l) {
                                              isLoading.value = false;
                                              return l.toString() ==
                                                      "ApiFailures.noResponse()"
                                                  ? showSnack(
                                                      title:
                                                          "Please Check Your internet connection",
                                                      scaffoldMessengerKey:
                                                          snakKey.value)
                                                  : showSnack(
                                                      title:
                                                          "Error Occured please contact us",
                                                      scaffoldMessengerKey:
                                                          snakKey.value);
                                            }, (r) {
                                              if (r.toString() ==
                                                  "Your cart is empty") {
                                                isLoading.value = false;
                                                return showSnack(
                                                    scaffoldMessengerKey:
                                                        snakKey.value,
                                                    title:
                                                        "Your cart is empty");
                                              } else {
                                                isLoading.value = false;
                                              }
                                            })),
                                    child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(25),
                                            gradient: const LinearGradient(
                                                begin: Alignment.topCenter,
                                                end: Alignment.bottomCenter,
                                                colors: [
                                                  Color(0xff3B788B),
                                                  Color(0xff2B4D58)
                                                ])),
                                        width: constraints.maxWidth / 2.5,
                                        height: 60,
                                        child: const Center(
                                          child: Text(
                                            "Error While Loading Cart",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ))),
                                loading: () => Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        gradient: const LinearGradient(
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                            colors: [
                                              Color(0xff3B788B),
                                              Color(0xff2B4D58)
                                            ])),
                                    width: constraints.maxWidth / 2.5,
                                    height: 60,
                                    child: const Center(
                                      child: Text(
                                        "Loading your cart items",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )),
                              ),
                              body: Column(
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
                                                color: Color(0xffDEF0F5),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(15.0))),
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
                                            product!.product!.name!,
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
                                  Expanded(
                                    child: ScrollConfiguration(
                                      behavior: GlowBehavior(),
                                      child: ListView(
                                        children: [
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          Container(
                                            width: double.infinity,
                                            height: 340,
                                            decoration: BoxDecoration(
                                                color: const Color(0xffE2E2E2),
                                                borderRadius:
                                                    BorderRadius.circular(25)),
                                            child: Center(
                                                child:
                                                    FadeInImage.memoryNetwork(
                                              placeholder: kTransparentImage,
                                              image:
                                                  "$storageUrl${product!.product!.image}",
                                            )),
                                          ),
                                          const SizedBox(
                                            height: 40,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  Container(
                                                    height: 46,
                                                    width: 46,
                                                    padding:
                                                        const EdgeInsets.all(5),
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(25),
                                                        border: Border.all(
                                                            width: 2,
                                                            color: const Color(
                                                                0xff3B788B))),
                                                    child: Center(
                                                        child: FadeInImage
                                                            .memoryNetwork(
                                                      placeholder:
                                                          kTransparentImage,
                                                      image:
                                                          "$storageUrl${product!.supplier!.image}",
                                                    )),
                                                  ),
                                                  const SizedBox(
                                                    width: 15,
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
                                                        product!
                                                            .supplier!.name!,
                                                        style: const TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                      const SizedBox(
                                                        height: 5,
                                                      ),
                                                      Text(
                                                        product!
                                                            .supplier!.address!,
                                                        style: const TextStyle(
                                                            fontSize: 14,
                                                            color: Colors.grey,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal),
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              ),
                                              Container(
                                                width: 130,
                                                height: 40,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15),
                                                    border: Border.all(
                                                        width: 2,
                                                        color: const Color(
                                                            0xff3B788B))),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    IconButton(
                                                        onPressed: () =>
                                                            quantity.value != 1
                                                                ? quantity
                                                                    .value--
                                                                : null,
                                                        icon: const Icon(
                                                          FontAwesomeIcons
                                                              .minus,
                                                          size: 20,
                                                        )),
                                                    Text(
                                                      quantity.value.toString(),
                                                      style: const TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    IconButton(
                                                        onPressed: () =>
                                                            quantity.value++,
                                                        icon: const Icon(
                                                          FontAwesomeIcons.plus,
                                                          size: 20,
                                                        )),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  const Text(
                                                    "Price ",
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Text(
                                                    "JOD ${product!.price!}",
                                                    style: const TextStyle(
                                                        color:
                                                            Color(0xff3B788B),
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ],
                                              ),
                                              Text(
                                                "Quantity / (${product!.product!.unit})",
                                                style: const TextStyle(
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 25,
                                          ),
                                          const Divider(
                                            color: Color(0xffDEF0F5),
                                            thickness: 2,
                                          ),
                                          const SizedBox(
                                            height: 25,
                                          ),
                                          const Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              "Description",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              product!.product!.description!,
                                              style: const TextStyle(
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 25,
                                          ),
                                          const Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              "Brand Name",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              product!.product!.brand!,
                                              style: const TextStyle(
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    blurRadius: 10.0,
                                    offset: Offset(0, -2),
                                  ),
                                ],
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(25.0),
                                    topRight: Radius.circular(25.0))),
                            height: 104,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 25.0,
                                  right: 25.0,
                                  top: 25.0,
                                  bottom: 25.0),
                              child: GestureDetector(
                                onTap: () {
                                  isLoading.value = true;
                                  ref
                                      .read(addcartProvider)
                                      .execute(AddCartUseCaseInput(
                                          supplierid:
                                              product!.supplier_id.toString(),
                                          supplierproductid:
                                              product!.id.toString(),
                                          quantity: quantity.value.toString()))
                                      .then((value) => value.fold((l) {
                                            isLoading.value = false;
                                            return l.toString() ==
                                                    "ApiFailures.noResponse()"
                                                ? showSnack(
                                                    title:
                                                        "Please Check Your internet connection",
                                                    scaffoldMessengerKey:
                                                        snakKey.value)
                                                : showSnack(
                                                    title:
                                                        "Error Occured please contact us",
                                                    scaffoldMessengerKey:
                                                        snakKey.value);
                                          }, (r) {
                                            if (r.toString() ==
                                                "Product is inactive") {
                                              isLoading.value = false;
                                              return showSnack(
                                                  scaffoldMessengerKey:
                                                      snakKey.value,
                                                  title: "Product is inactive");
                                            } else if (r.toString() ==
                                                "Out of quantity") {
                                              isLoading.value = false;
                                              return showSnack(
                                                  scaffoldMessengerKey:
                                                      snakKey.value,
                                                  title: "Out of quantity");
                                            } else {
                                              ref
                                                  .refresh(getCartProvider(
                                                          product!.supplier_id
                                                              .toString())
                                                      .future)
                                                  .then((value) =>
                                                      value.fold((l) {
                                                        isLoading.value = false;
                                                        return l.toString() ==
                                                                "ApiFailures.noResponse()"
                                                            ? showSnack(
                                                                title:
                                                                    "Please Check Your internet connection",
                                                                scaffoldMessengerKey:
                                                                    snakKey
                                                                        .value)
                                                            : showSnack(
                                                                title:
                                                                    "Error Occured please contact us",
                                                                scaffoldMessengerKey:
                                                                    snakKey
                                                                        .value);
                                                      }, (r) {
                                                        if (r.toString() ==
                                                            "Your cart is empty") {
                                                          isLoading.value =
                                                              false;
                                                          return showSnack(
                                                              scaffoldMessengerKey:
                                                                  snakKey.value,
                                                              title:
                                                                  "Your cart is empty");
                                                        } else {
                                                          isLoading.value =
                                                              false;
                                                          return showSnack(
                                                              scaffoldMessengerKey:
                                                                  snakKey.value,
                                                              title:
                                                                  "Item has been added to your cart");
                                                        }
                                                      }));
                                            }
                                          }));
                                },
                                child: Container(
                                  decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15.0)),
                                      gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Color(0xff3B788B),
                                            Color(0xff2B4D58)
                                          ])),
                                  width: double.infinity,
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        32, 12, 32, 12),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Image.asset("assets/cartt.png"),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            const Text(
                                              "Add To Cart",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20,
                                                  color: Colors.white),
                                            ),
                                          ],
                                        ),
                                        const VerticalDivider(
                                          color: Colors.white,
                                          thickness: 2,
                                        ),
                                        Text(
                                          "JOD ${product!.price! * quantity.value}",
                                          style: const TextStyle(
                                              fontSize: 20,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ),
        visibile(
            loding: isLoading.value, height: MediaQuery.of(context).size.height)
      ],
    );
  }
}

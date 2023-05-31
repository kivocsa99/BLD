import 'package:auto_route/auto_route.dart';
import 'package:bld/application/cart/removefromcart/remove.from.cart.use.case.dart';
import 'package:bld/application/cart/removefromcart/remove.from.cart.use.case.input.dart';
import 'package:bld/application/cart/setquantity/cart.quantity.use.case.input.dart';
import 'package:bld/application/orders/placeorder/placeorder.use.case.input.dart';
import 'package:bld/constatns.dart';
import 'package:bld/domain/deliverytime/contracts/deliverytimemodel.dart';
import 'package:bld/domain/suppliers/model/suppliersmodel.dart';
import 'package:bld/presentation/components/cartcontainer.dart';
import 'package:bld/presentation/components/error_widget.dart';
import 'package:bld/presentation/components/paymentcontainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../application/cart/setquantity/cart.quantity.use.case.dart';
import '../../application/orders/placeorder/placeorder.use.case.dart';
import '../../application/provider/orders.repository.provider.dart';
import '../../domain/cart/model/cartmodel.dart';
import '../../domain/categoryandproductsmodel/categoryandproductsmodel.dart';
import '../../routes/app_route.dart';
import '../components/scrollglowbehavior.dart';

//supplier image
@RoutePage()
class CartScreen extends HookConsumerWidget {
  final String? supplierid;
  const CartScreen({super.key, this.supplierid});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final seletedindex = useState<int>(20);
    final isVisa = useState(false);
    final isCash = useState(false);
    final isLoading = useState(false);
    final getcartitems = ref.watch(getCartProvider(supplierid));
    final deliverytime = ref.watch(getdeliveryProvider);
    final snakKey = useState(GlobalKey<ScaffoldMessengerState>());
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
                  return getcartitems.when(
                    data: (data) => data.fold(
                        (l) => SomeThingWentWrongErrorWidget(
                              refresh: () => ref
                                  .refresh(getCartProvider(supplierid).future)
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
                                              title: "Your cart is empty");
                                        } else {
                                          isLoading.value = false;
                                        }
                                      })),
                            ), (r) {
                      if (r.toString() == "Your cart is empty") {
                        return Container(
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
                                "Your cart is empty",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ));
                      } else {
                        final List<CartModel> cart = r;
                        num totalPrice = 0.0;
                        for (var product in cart) {
                          num productPrice = product.quantity! *
                              product.supplier_product!.price!;
                          totalPrice += productPrice;
                        }
                        return Container(
                          color: const Color(0xffF2F2F2),
                          width: constraints.maxWidth,
                          height: constraints.maxHeight,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
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
                                              onTap: () => context.router.pop(),
                                              child: Container(
                                                decoration: const BoxDecoration(
                                                    color: Color(0xffDEF0F5),
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
                                            const Text(
                                              "Cart",
                                              style: TextStyle(
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
                                                ScrollViewKeyboardDismissBehavior
                                                    .onDrag,
                                            children: [
                                              SizedBox(
                                                height: cart.length <= 1
                                                    ? 150
                                                    : 500,
                                                width: double.infinity,
                                                child: ScrollConfiguration(
                                                  behavior: GlowBehavior(),
                                                  child: ListView.separated(
                                                    physics:
                                                        const ClampingScrollPhysics(),
                                                    separatorBuilder:
                                                        (context, index) {
                                                      return const SizedBox(
                                                        height: 10,
                                                      );
                                                    },
                                                    itemCount: cart.length,
                                                    itemBuilder:
                                                        (context, index) {
                                                      CategoryAndProductsModel
                                                          product = cart[index]
                                                              .supplier_product!;
                                                      final SuppliersModel
                                                          supplier =
                                                          cart[index].supplier!;

                                                      return CartContainer(
                                                        width: constraints
                                                            .maxWidth,
                                                        quantity: cart[index]
                                                            .quantity!,
                                                        minus: () async {
                                                          isLoading.value =
                                                              true;

                                                          ref
                                                              .read(
                                                                  setcartquantityProvider)
                                                              .execute(CartQuantityUseCaseInput(
                                                                  cartitemid: cart[
                                                                          index]
                                                                      .id
                                                                      .toString(),
                                                                  quantity:
                                                                      (cart[index].quantity! -
                                                                              1)
                                                                          .toString()))
                                                              .then((value) =>
                                                                  value.fold(
                                                                      (l) {
                                                                    isLoading
                                                                            .value =
                                                                        false;
                                                                    return l.toString() ==
                                                                            "ApiFailures.noResponse()"
                                                                        ? showSnack(
                                                                            title:
                                                                                "Please Check Your internet connection",
                                                                            scaffoldMessengerKey: snakKey
                                                                                .value)
                                                                        : showSnack(
                                                                            title:
                                                                                "Error Occured please contact us",
                                                                            scaffoldMessengerKey:
                                                                                snakKey.value);
                                                                  }, (r) {
                                                                    ref.refresh(getCartProvider(supplierid).future).then((value) =>
                                                                        value.fold(
                                                                            (l) {
                                                                          isLoading.value =
                                                                              false;
                                                                          return l.toString() == "ApiFailures.noResponse()"
                                                                              ? showSnack(title: "Please Check Your internet connection", scaffoldMessengerKey: snakKey.value)
                                                                              : showSnack(title: "Error Occured please contact us", scaffoldMessengerKey: snakKey.value);
                                                                        }, (r) {
                                                                          if (r.toString() ==
                                                                              "Your cart is empty") {
                                                                            isLoading.value =
                                                                                false;
                                                                            return showSnack(
                                                                                scaffoldMessengerKey: snakKey.value,
                                                                                title: "Your cart is empty");
                                                                          } else {
                                                                            isLoading.value =
                                                                                false;
                                                                          }
                                                                        }));
                                                                  }));
                                                        },
                                                        increase: () async {
                                                          {
                                                            isLoading.value =
                                                                true;

                                                            ref
                                                                .read(
                                                                    setcartquantityProvider)
                                                                .execute(CartQuantityUseCaseInput(
                                                                    cartitemid:
                                                                        cart[index]
                                                                            .id
                                                                            .toString(),
                                                                    quantity: (cart[index].quantity! +
                                                                            1)
                                                                        .toString()))
                                                                .then((value) =>
                                                                    value.fold(
                                                                        (l) {
                                                                      isLoading
                                                                              .value =
                                                                          false;
                                                                      return l.toString() ==
                                                                              "ApiFailures.noResponse()"
                                                                          ? showSnack(
                                                                              title:
                                                                                  "Please Check Your internet connection",
                                                                              scaffoldMessengerKey: snakKey
                                                                                  .value)
                                                                          : showSnack(
                                                                              title: "Error Occured please contact us",
                                                                              scaffoldMessengerKey: snakKey.value);
                                                                    }, (r) {
                                                                      ref.refresh(getCartProvider(supplierid).future).then((value) =>
                                                                          value.fold(
                                                                              (l) {
                                                                            isLoading.value =
                                                                                false;
                                                                            return l.toString() == "ApiFailures.noResponse()"
                                                                                ? showSnack(title: "Please Check Your internet connection", scaffoldMessengerKey: snakKey.value)
                                                                                : showSnack(title: "Error Occured please contact us", scaffoldMessengerKey: snakKey.value);
                                                                          }, (r) {
                                                                            if (r.toString() ==
                                                                                "Your cart is empty") {
                                                                              isLoading.value = false;
                                                                              return showSnack(scaffoldMessengerKey: snakKey.value, title: "Your cart is empty");
                                                                            } else {
                                                                              isLoading.value = false;
                                                                            }
                                                                          }));
                                                                    }));
                                                          }
                                                        },
                                                        trash: () async {
                                                          {
                                                            isLoading.value =
                                                                true;

                                                            ref
                                                                .read(
                                                                    removefromcartProvider)
                                                                .execute(
                                                                    RemoveFromCartUseCaseInput(
                                                                  cartitemid: cart[
                                                                          index]
                                                                      .id
                                                                      .toString(),
                                                                ))
                                                                .then((value) =>
                                                                    value.fold(
                                                                        (l) {
                                                                      isLoading
                                                                              .value =
                                                                          false;
                                                                      return l.toString() ==
                                                                              "ApiFailures.noResponse()"
                                                                          ? showSnack(
                                                                              title:
                                                                                  "Please Check Your internet connection",
                                                                              scaffoldMessengerKey: snakKey
                                                                                  .value)
                                                                          : showSnack(
                                                                              title: "Error Occured please contact us",
                                                                              scaffoldMessengerKey: snakKey.value);
                                                                    }, (r) {
                                                                      ref.refresh(getCartProvider(supplierid).future).then((value) =>
                                                                          value.fold(
                                                                              (l) {
                                                                            isLoading.value =
                                                                                false;
                                                                            return l.toString() == "ApiFailures.noResponse()"
                                                                                ? showSnack(title: "Please Check Your internet connection", scaffoldMessengerKey: snakKey.value)
                                                                                : showSnack(title: "Error Occured please contact us", scaffoldMessengerKey: snakKey.value);
                                                                          }, (r) {
                                                                            if (r.toString() ==
                                                                                "CART_IS_EMPTY") {
                                                                              context.router.replaceAll([
                                                                                const MainRoute()
                                                                              ]);
                                                                            } else {
                                                                              isLoading.value = false;
                                                                            }
                                                                          }));
                                                                    }));
                                                          }
                                                        },
                                                        product: product,
                                                        supplier: supplier,
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 30,
                                              ),
                                              const Align(
                                                alignment: Alignment.centerLeft,
                                                child: Text(
                                                  "Pay with",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 18),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              PaymentContainer(
                                                selected: isVisa.value,
                                                title: "Visa/Credit Card",
                                                image: "visa.png",
                                                ontap: () {
                                                  isCash.value = false;
                                                  isVisa.value = true;
                                                },
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              PaymentContainer(
                                                selected: isCash.value,
                                                title: "Cash",
                                                image: "cash.png",
                                                ontap: () {
                                                  isCash.value = true;
                                                  isVisa.value = false;
                                                },
                                              ),
                                              const SizedBox(
                                                height: 30,
                                              ),
                                              const Align(
                                                alignment: Alignment.centerLeft,
                                                child: Text(
                                                  "Deliver to",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 18),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              GestureDetector(
                                                onTap: () => context.router
                                                    .push(LocationRoute(
                                                        isproject: false)),
                                                child: Container(
                                                  width: double.infinity,
                                                  height: 50,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                        color: const Color(
                                                            0xff4365D7),
                                                        width: 1,
                                                      ),
                                                      color: Colors.white,
                                                      borderRadius:
                                                          const BorderRadius
                                                                  .all(
                                                              Radius.circular(
                                                                  15.0))),
                                                  child: const Center(
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Icon(
                                                          Icons.pin_drop,
                                                          color:
                                                              Color(0xff4365D7),
                                                        ),
                                                        Text(
                                                          "Add Location",
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xff4365D7),
                                                              fontSize: 18),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 30,
                                              ),
                                              const Align(
                                                alignment: Alignment.centerLeft,
                                                child: Text(
                                                  "Time to Deliver",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 18),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              deliverytime.when(
                                                  data: (data) {
                                                    return data.fold(
                                                        (l) =>
                                                            Text(l.toString()),
                                                        (r) {
                                                      final List<
                                                              DeliveryTimeModel>
                                                          times = r;
                                                      return SizedBox(
                                                        width: double.infinity,
                                                        height: 80 *
                                                            times.length /
                                                            2.toDouble(),
                                                        child:
                                                            ListView.separated(
                                                          shrinkWrap: true,
                                                          physics:
                                                              const NeverScrollableScrollPhysics(),
                                                          separatorBuilder:
                                                              (context, index) {
                                                            return const SizedBox(
                                                              width: 10,
                                                            );
                                                          },
                                                          itemCount:
                                                              (times.length / 2)
                                                                  .ceil(),
                                                          itemBuilder:
                                                              (context, index) {
                                                            return Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                GestureDetector(
                                                                  onTap: () =>
                                                                      seletedindex
                                                                              .value =
                                                                          index *
                                                                              2,
                                                                  child:
                                                                      Container(
                                                                    width: constraints.maxWidth /
                                                                            2 -
                                                                        40,
                                                                    height: 80,
                                                                    padding:
                                                                        const EdgeInsets.all(
                                                                            15),
                                                                    decoration: BoxDecoration(
                                                                        color: Colors
                                                                            .white,
                                                                        borderRadius:
                                                                            BorderRadius.circular(20)),
                                                                    child:
                                                                        Column(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Align(
                                                                          alignment:
                                                                              Alignment.topRight,
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                15,
                                                                            height:
                                                                                15,
                                                                            decoration: BoxDecoration(
                                                                                border: Border.all(color: Colors.black),
                                                                                color: seletedindex.value == index * 2 ? Colors.green : Colors.white,
                                                                                shape: BoxShape.circle),
                                                                          ),
                                                                        ),
                                                                        Text(
                                                                          times[index * 2]
                                                                              .name!,
                                                                          style: TextStyle(
                                                                              fontSize: constraints.maxWidth > 400 ? 15 : 11.5,
                                                                              fontWeight: FontWeight.bold),
                                                                        )
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                GestureDetector(
                                                                  onTap: () {
                                                                    seletedindex
                                                                            .value =
                                                                        index * 2 +
                                                                            1;
                                                                  },
                                                                  child:
                                                                      Container(
                                                                    width: constraints.maxWidth /
                                                                            2 -
                                                                        40,
                                                                    height: 80,
                                                                    padding:
                                                                        const EdgeInsets.all(
                                                                            15),
                                                                    decoration: BoxDecoration(
                                                                        color: Colors
                                                                            .white,
                                                                        borderRadius:
                                                                            BorderRadius.circular(20)),
                                                                    child:
                                                                        Column(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Align(
                                                                          alignment:
                                                                              Alignment.topRight,
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                15,
                                                                            height:
                                                                                15,
                                                                            decoration: BoxDecoration(
                                                                                border: Border.all(color: Colors.black),
                                                                                color: seletedindex.value == index * 2 + 1 ? Colors.green : Colors.white,
                                                                                shape: BoxShape.circle),
                                                                          ),
                                                                        ),
                                                                        Text(
                                                                          times[index * 2 + 1]
                                                                              .name!,
                                                                          style: TextStyle(
                                                                              fontSize: constraints.maxWidth > 400 ? 15 : 11.5,
                                                                              fontWeight: FontWeight.bold),
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
                                                    });
                                                  },
                                                  error: (error, stackTrace) =>
                                                      Text(error.toString()),
                                                  loading: () => const Center(
                                                        child: SpinKitCubeGrid(
                                                          color: Colors.blue,
                                                        ),
                                                      )),
                                              const SizedBox(
                                                height: 30,
                                              ),
                                              const Align(
                                                alignment: Alignment.centerLeft,
                                                child: Text(
                                                  "Payment Summary",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 18),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Container(
                                                padding:
                                                    const EdgeInsets.all(24),
                                                width: double.infinity,
                                                height: 175,
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20)),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        const Text(
                                                          "Delivery Fees",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.grey,
                                                              fontSize: 16),
                                                        ),
                                                        Text(
                                                          "JOD $totalPrice",
                                                          style:
                                                              const TextStyle(
                                                                  color: Colors
                                                                      .grey,
                                                                  fontSize: 16),
                                                        ),
                                                      ],
                                                    ),
                                                    const Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          "Tax Fees",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.grey,
                                                              fontSize: 16),
                                                        ),
                                                        Text(
                                                          "JOD 0.00",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.grey,
                                                              fontSize: 16),
                                                        ),
                                                      ],
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        const Text(
                                                          "Total Amount",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 16),
                                                        ),
                                                        Text(
                                                          "JOD $totalPrice",
                                                          style:
                                                              const TextStyle(
                                                                  color: Colors
                                                                      .black,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: 16),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
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
                                          offset: const Offset(0, -2),
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
                                            .read(placeOrderprovider)
                                            .execute(PlaceOrderUseCaseInput(
                                                supplierid: supplierid,
                                                deliverytimeid: "1",
                                                paymentmethod: "",
                                                location: ""))
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
                                                      "SUPPLIER CURRENTLY UNAVAILABLE") {
                                                    isLoading.value = false;
                                                    return showSnack(
                                                        title: r.toString(),
                                                        scaffoldMessengerKey:
                                                            snakKey.value);
                                                  } else if (r.toString() ==
                                                      "ITEM OUT OF STOCK") {
                                                    isLoading.value = false;
                                                    return showSnack(
                                                        title: r.toString(),
                                                        scaffoldMessengerKey:
                                                            snakKey.value);
                                                  } else if (r.toString() ==
                                                      "ITEM CURRENTLY UNAVAILABLE") {
                                                    isLoading.value = false;
                                                    return showSnack(
                                                        title: r.toString(),
                                                        scaffoldMessengerKey:
                                                            snakKey.value);
                                                  } else if (r.toString() ==
                                                      "DELIVERY TIME NOT FOUND") {
                                                    isLoading.value = false;
                                                    return showSnack(
                                                        title: r.toString(),
                                                        scaffoldMessengerKey:
                                                            snakKey.value);
                                                  } else if (r.toString() ==
                                                      "SUPPLIER NOT FOUND") {
                                                    isLoading.value = false;
                                                    return showSnack(
                                                        title: r.toString(),
                                                        scaffoldMessengerKey:
                                                            snakKey.value);
                                                  } else {
                                                    isLoading.value = false;
                                                    context.router.push(
                                                        PaymentRoute(
                                                            baseurl:
                                                                "$storageUrl/Shopping/InitPayment?id=${r["OrderID"]}"));
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
                                        child: const Center(
                                          child: Text(
                                            "Place Order",
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
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
                      }
                    }),
                    error: (error, stackTrace) => SomeThingWentWrongErrorWidget(
                      refresh: () => ref
                          .refresh(getCartProvider(supplierid).future)
                          .then((value) => value.fold((l) {
                                isLoading.value = false;
                                return l
                                            .toString() ==
                                        "ApiFailures.noResponse()"
                                    ? showSnack(
                                        title:
                                            "Please Check Your internet connection",
                                        scaffoldMessengerKey: snakKey.value)
                                    : showSnack(
                                        title:
                                            "Error Occured please contact us",
                                        scaffoldMessengerKey: snakKey.value);
                              }, (r) {
                                if (r.toString() == "Your cart is empty") {
                                  isLoading.value = false;
                                  return showSnack(
                                      scaffoldMessengerKey: snakKey.value,
                                      title: "Your cart is empty");
                                } else {
                                  isLoading.value = false;
                                }
                              })),
                    ),
                    loading: () => const Center(
                      child: SpinKitCubeGrid(
                        color: Colors.blue,
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

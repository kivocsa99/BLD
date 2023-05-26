import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../domain/cart/model/cartmodel.dart';

@RoutePage()
class CartScreen extends StatelessWidget {
  final List<CartModel>? cart;
  const CartScreen({super.key, this.cart});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
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
                              const Text(
                                "Cart",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              const SizedBox(
                                width: 42,
                                height: 42,
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: ListView.builder(
                            itemCount: cart!.length,
                            itemBuilder: (context, index) {},
                          ),
                        )
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
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 5,
                            spreadRadius: 5,
                            offset: const Offset(0, 0),
                          )
                        ],
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(25.0),
                            topRight: Radius.circular(25.0))),
                    height: 104,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 25.0, right: 25.0, top: 25.0, bottom: 25.0),
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.0)),
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color(0xff3B788B),
                                    Color(0xff2B4D58)
                                  ])),
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(32, 12, 32, 12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                  "",
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
    ));
  }
}

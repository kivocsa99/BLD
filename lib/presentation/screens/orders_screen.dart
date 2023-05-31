import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../routes/app_route.dart';

@RoutePage()
class OrdersScreen extends HookConsumerWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
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
          "No Orders Yet!",
          style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
            "Start exploring our app and order\nAll what you need for you projects",
            style: TextStyle(fontSize: 20.0)),
        const SizedBox(
          height: 20,
        ),
        GestureDetector(
          onTap: () {
            context.router.push(NewOrdersRoute(comingroute: "orderscreen"));
          },
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                gradient: const LinearGradient(
                    colors: [Color(0xff4365D7), Color(0xff324CA3)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter)),
            width: double.infinity,
            height: 50,
            child: const Center(
              child: Text(
                "Start Ordering",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        )
      ]),
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:bld/domain/categoryandproductsmodel/categoryandproductsmodel.dart';
import 'package:bld/presentation/components/productcard.dart';
import 'package:flutter/material.dart';

import '../../routes/app_route.dart';

class ProjectOrderHistory extends StatelessWidget {
  final List<CategoryAndProductsModel>? orderItems;
  const ProjectOrderHistory({super.key, this.orderItems});

  @override
  Widget build(BuildContext context) {
    return orderItems!.isNotEmpty
        ? Expanded(
            child: ListView.builder(
            itemCount: orderItems!.length,
            itemBuilder: (context, index) {
              final CategoryAndProductsModel product = orderItems![index];
              return ProductCard(
                category: product,
              );
            },
          ))
        : Column(
            children: [
              const Text("There is No items ordered for this project"),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  context.router
                      .push(NewOrdersRoute(comingroute: "orderscreen"));
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
                      "Start ordering from here",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          );
  }
}

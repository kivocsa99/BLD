import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

import '../../constatns.dart';
import '../../domain/categoryandproductsmodel/categoryandproductsmodel.dart';
import '../../routes/app_route.dart';

class ProductCard extends StatelessWidget {
  final CategoryAndProductsModel? category;

  const ProductCard({super.key, this.category});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.router.push(ProductRoute(product: category)),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25), color: Colors.white),
        width: double.infinity,
        height: 85,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(
              children: [
                Container(
                    width: 70,
                    height: 70,
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: const Color(0xFFE2E2E2),
                        borderRadius: BorderRadius.circular(15)),
                    child: FadeInImage.memoryNetwork(
                      placeholder: kTransparentImage,
                      image: "$storageUrl${category!.product!.image}",
                      fit: BoxFit.contain,
                    )),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "${category!.product!.name}",
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.normal),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "JOD ${category!.price}",
                      style: const TextStyle(
                          fontSize: 16, color: Color(0xff3B788B)),
                    )
                  ],
                )
              ],
            ),
            Row(
              children: [
                const VerticalDivider(
                  width: 1,
                  color: Color(0xffDEF0F5),
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  height: 40,
                  width: 60,
                  padding: const EdgeInsets.all(5),
                  color: Colors.transparent,
                  child: FadeInImage.memoryNetwork(
                    placeholder: kTransparentImage,
                    image: "$storageUrl${category!.supplier!.image}",
                    fit: BoxFit.cover,
                  ),
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}

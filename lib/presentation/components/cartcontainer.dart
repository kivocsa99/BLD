import 'package:bld/domain/categoryandproductsmodel/categoryandproductsmodel.dart';
import 'package:bld/domain/suppliers/model/suppliersmodel.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:transparent_image/transparent_image.dart';

import '../../constatns.dart';

class CartContainer extends HookConsumerWidget {
  final CategoryAndProductsModel? product;
  final SuppliersModel? supplier;
  final VoidCallback? minus;
  final VoidCallback? increase;
  final VoidCallback? trash;
  final int? quantity;
  final double? width;
  const CartContainer(
      {super.key,
      this.product,
      this.width,
      this.supplier,
      this.minus,
      this.quantity,
      this.increase,
      this.trash});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: const Color(0xff707070),
                      borderRadius: BorderRadius.circular(20)),
                  child: FadeInImage.memoryNetwork(
                    placeholder: kTransparentImage,
                    image: "$storageUrl${product!.product!.image}",
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      product!.product!.brand!,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      product!.product!.name!,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "JOD ${product!.price!.toString()}",
                      style: const TextStyle(
                        fontSize: 16,
                        color: Color(0xff3B788B),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 50,
                  height: 70,
                  child: FadeInImage.memoryNetwork(
                    placeholder: kTransparentImage,
                    image: "$storageUrl${supplier!.image}",
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                        onPressed: trash,
                        icon: const Icon(
                          FontAwesomeIcons.trash,
                          color: Colors.red,
                          size: 20,
                        )),
                    Container(
                      width: width! > 400 ? 140 : 120,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                              width: 2, color: const Color(0xff3B788B))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              onPressed: minus,
                              icon: const Icon(
                                FontAwesomeIcons.minus,
                                size: 20,
                              )),
                          Text(
                            quantity.toString(),
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          IconButton(
                              onPressed: increase,
                              icon: const Icon(
                                FontAwesomeIcons.plus,
                                size: 20,
                              )),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

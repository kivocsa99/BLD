import 'package:flutter/material.dart';
import 'package:bld/constatns.dart';
import 'package:transparent_image/transparent_image.dart';

class CategoryCard extends StatelessWidget {
  final String? title;
  final String? icon;
  final double? width;

  const CategoryCard({super.key, this.width, this.title, this.icon});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      width: 70,
      child: Column(
        children: [
          Container(
            height: width! < 400 ? 40 : 60,
            width: width! < 400 ? 50 : 70,
            padding: const EdgeInsets.all(5),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: FadeInImage.memoryNetwork(
              placeholder: kTransparentImage,
              image: "$storageUrl$icon",
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            title!,
            style: const TextStyle(fontSize: 14),
          )
        ],
      ),
    );
  }
}

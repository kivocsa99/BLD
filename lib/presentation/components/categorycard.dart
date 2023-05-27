import 'package:flutter/material.dart';
import 'package:bld/constatns.dart';
import 'package:transparent_image/transparent_image.dart';

class CategoryCard extends StatelessWidget {
  final String? title;
  final String? icon;

  const CategoryCard({super.key, this.title, this.icon});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      width: 70,
      child: Column(
        children: [
          Container(
            height: 60,
            width: 70,
            padding: const EdgeInsets.all(5),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20))),
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

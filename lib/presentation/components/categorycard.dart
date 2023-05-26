import 'package:flutter/material.dart';
import 'package:bld/constatns.dart';

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
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Center(
              child: Image.network(
                "$storageUrl$icon",
                width: 50,
                height: 50,
                fit: BoxFit.fitWidth,
              ),
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

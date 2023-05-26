import 'package:flutter/material.dart';

class OrderSearchBar extends StatelessWidget {
  final TextEditingController? controller;
  final double? width;
  final ValueChanged<String>? finished;
  final VoidCallback? onclick;

  const OrderSearchBar(
      {super.key, this.width, this.controller, this.onclick, this.finished});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 46,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(15.0))),
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
        child: TextFormField(
          onFieldSubmitted: finished,
          controller: controller,
          onTap: onclick,
          decoration: const InputDecoration(
            icon: Icon(Icons.search),
            hintText: "Search for suppliers, products..",
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}

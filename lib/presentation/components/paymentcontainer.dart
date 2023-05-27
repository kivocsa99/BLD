import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class PaymentContainer extends HookWidget {
  final VoidCallback? ontap;
  final bool? selected;
  final String? image;
  final String? title;

  const PaymentContainer(
      {this.title, this.selected, super.key, this.ontap, this.image});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        padding: const EdgeInsets.all(20),
        width: double.infinity,
        height: 75,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  padding: const EdgeInsets.all(5),
                  child: Image.asset("assets/$image"),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  title!,
                  style: const TextStyle(color: Colors.black, fontSize: 16),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.black),
                  color: selected == false ? Colors.white : Colors.green),
              width: 25,
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class FieldContainer extends StatelessWidget {
  final String? title;

  const FieldContainer({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: SizedBox(
        height: 100,
        width: 367,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                title!,
                style: const TextStyle(fontSize: 14),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                width: double.infinity,
                child: Container(
                  height: 56,
                  decoration: const BoxDecoration(
                      color: Color(0xffF2F2F2),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

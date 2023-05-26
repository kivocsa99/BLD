import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SomeThingWentWrongErrorWidget extends StatelessWidget {
  final VoidCallback? refresh;
  const SomeThingWentWrongErrorWidget({super.key, this.refresh});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        SizedBox(
          width: double.infinity,
          height: 270,
          child: Lottie.asset(
            "assets/error.json",
            fit: BoxFit.fitHeight,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        GestureDetector(
          onTap: refresh,
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
                "Refresh",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
        )
      ]),
    );
  }
}

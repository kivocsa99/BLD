import 'dart:math' as math;

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../components/diamond_painter.dart';

@RoutePage()
class OnBoardingScreen extends HookWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final rotateAnimation =
        useAnimationController(duration: const Duration(milliseconds: 500));
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
            ),
            const Align(
              alignment: Alignment.centerRight,
              child: Text(
                "Skip",
                style: TextStyle(color: Color(0xff3B788B), fontSize: 18),
              ),
            ),
            const SizedBox(
              height: 200,
            ),
            GestureDetector(
              onTap: () => rotateAnimation.forward(),
              child: AnimatedBuilder(
                animation: rotateAnimation,
                builder: (context, child) {
                  return Transform.rotate(
                    angle: rotateAnimation.value * 0.5 * 3.14159,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Container(
                        width: 300,
                        height: 300,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

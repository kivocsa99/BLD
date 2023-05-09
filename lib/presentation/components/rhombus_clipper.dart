
import 'package:flutter/material.dart';
import 'dart:math' as math;


class RhombusClipper extends CustomClipper<Path> {
  final double angle;

  RhombusClipper(this.angle);

  @override
  Path getClip(Size size) {

    double a = size.width / 2;
    double b = size.height / 2;

    double x1 = math.cos(angle) * a;
    double y1 = math.sin(angle) * a;

    double x2 = math.sin(angle) * b;
    double y2 = math.cos(angle) * b;

    Offset p1 = Offset(a - x1, b - y1);
    Offset p2 = Offset(a - x2, b + y2);
    Offset p3 = Offset(a + x1, b + y1);
    Offset p4 = Offset(a + x2, b - y2);

    return Path()..addPolygon([p1, p2, p3, p4], true);
  }

  @override
  bool shouldReclip(RhombusClipper oldClipper) {
    return oldClipper.angle != angle;
  }
}
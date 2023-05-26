import 'package:flutter/material.dart';

class DiamondPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final path = Path();
    path.moveTo(size.width / 2, 0);
    path.lineTo(size.width, size.height / 2);
    path.lineTo(size.width / 2, size.height);
    path.lineTo(0, size.height / 2);
    path.close();

    final paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;

    final borderRadius = BorderRadius.circular(8.0);
    canvas.drawPath(
      Path()
        ..addRRect(
          RRect.fromRectAndCorners(
            Rect.fromLTWH(0, 0, size.width, size.height),
            topLeft: borderRadius.topLeft,
            topRight: borderRadius.topRight,
            bottomLeft: borderRadius.bottomLeft,
            bottomRight: borderRadius.bottomRight,
          ),
        )
        ..fillType = PathFillType.evenOdd
        ..addPath(path, Offset.zero),
      paint,
    );
  }

  @override
  bool shouldRepaint(DiamondPainter oldDelegate) => false;
}

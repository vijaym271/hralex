import 'package:flutter/material.dart';
import 'dart:math' as math;

class TrianglePainter extends CustomPainter {
  Color color;
  final PaintingStyle paintingStyle;
  final double strokeWidth;

  TrianglePainter(
      {this.color = Colors.black,
      this.strokeWidth = 3,
      this.paintingStyle = PaintingStyle.stroke});

  set setColor(color) => this.color = color;

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = color.withOpacity(0.05)
      ..strokeWidth = strokeWidth
      ..style = paintingStyle;

    canvas.drawPath(getTrianglePath(size.width, size.height - 15), paint);
  }

  Path getTrianglePath(double x, double y) {
    return Path()
      ..moveTo(y + 15, y)
      ..lineTo(x, 30)
      ..lineTo(x / 2, y)
      ..lineTo(x, y);
  }

  @override
  bool shouldRepaint(TrianglePainter oldDelegate) {
    return oldDelegate.color != color ||
        oldDelegate.paintingStyle != paintingStyle ||
        oldDelegate.strokeWidth != strokeWidth;
  }
}

class CirclePainter extends CustomPainter {
  CirclePainter({this.color = Colors.black});
  Color color;

  set setColor(color) => this.color = color;

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = color.withOpacity(0.05);
    canvas.drawArc(
      Rect.fromCenter(
        center: Offset(120, size.width - 50),
        height: size.height - 45,
        width: size.width - 45,
      ),
      math.pi / 2,
      math.pi,
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

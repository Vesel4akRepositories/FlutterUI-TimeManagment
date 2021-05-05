import 'dart:math';

import 'package:flutter/material.dart';

class ProgressRings extends CustomPainter {
  final double completedPercentage;
  final double circleWidth;
  final Color color;
  final num gradientStartAngle;
  final num gradientEndAngle;
  final double progressStartAngle;
  final double lengthToRemove;

  ProgressRings({
    this.completedPercentage,
    this.circleWidth,
    this.color,
    this.gradientStartAngle = 3 * pi / 2,
    this.gradientEndAngle = 4 * pi / 2,
    this.progressStartAngle = 0,
    this.lengthToRemove = 0,
  });

  @override
  void paint(Canvas canvas, Size size) {
    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = min(size.width / 2, size.height / 2);

    double arcAngle = 2 * pi * (completedPercentage);

    Rect boundingSquare = Rect.fromCircle(center: center, radius: radius);

    paint(Color color,
        {double startAngle = 0.0, double endAngle = pi * 2}) {


      return Paint()
        ..strokeCap = StrokeCap.round
        ..style = PaintingStyle.stroke
        ..strokeWidth = circleWidth
        ..color = color;
    }

    canvas.drawArc(
      boundingSquare,
      -pi / 2 + progressStartAngle,
      arcAngle - lengthToRemove,
      false,
      paint(
        color,
        startAngle: gradientStartAngle,
        endAngle: gradientEndAngle,
      ),
    );
  }

  @override
  bool shouldRepaint(CustomPainter painter) => true;
}
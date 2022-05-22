import 'dart:math';

import 'package:flutter/material.dart';

class CircleProgress extends CustomPainter {

  CircleProgress(this.speed);
  double speed;
  @override
  void paint(Canvas canvas, Size size) {
    Paint outerCircle = Paint()
      ..strokeWidth = 10
      ..color = const Color(0xFFE7E7E7)
      ..style = PaintingStyle.stroke;

    Paint completeArc = Paint()
      ..strokeWidth = 10
      ..color = const Color(0xFF6FCF97)
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    Offset center = Offset(size.width/2 , size.height/2);
    double radius = min(size.width, size.height )-7;

    canvas.drawCircle(center, radius, outerCircle);
    double angle = 2 * pi * ( speed/100);
    canvas.drawArc(Rect.fromCircle(center: center, radius: radius), -pi/2, angle, false, completeArc);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;

}
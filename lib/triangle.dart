import 'package:flutter/material.dart';

class LeftTriangle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 5.0,
        child: CustomPaint(
          painter: LeftTrianglePainter(),
        ));
  }
}

class LeftTrianglePainter extends CustomPainter {
  Paint _myPaint;
  @override
  void paint(Canvas canvas, Size size) {
    _myPaint = new Paint();
    _myPaint.color = Colors.white;

    Path path = Path();
    path.moveTo(0, 0);
    path.lineTo(5, 5);
    path.lineTo(5, -5);
    path.lineTo(0, 0);
    canvas.drawPath(path, _myPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class RightTriangle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 5.0,
        child: CustomPaint(
          painter: RightTrianglePainter(),
        ));
  }
}

class RightTrianglePainter extends CustomPainter {
  Paint _myPaint;
  @override
  void paint(Canvas canvas, Size size) {
    _myPaint = new Paint();
    _myPaint.color = Color(0xff95ec69);

    Path path = Path();
    path.moveTo(5, 0);
    path.lineTo(0, 5);
    path.lineTo(0, -5);
    path.lineTo(5, 0);
    canvas.drawPath(path, _myPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

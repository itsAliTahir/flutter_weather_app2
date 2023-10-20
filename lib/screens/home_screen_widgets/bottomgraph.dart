import 'package:flutter/material.dart';

class MyHomeGraph extends StatefulWidget {
  @override
  _MyHomeGraphState createState() => _MyHomeGraphState();
}

class _MyHomeGraphState extends State<MyHomeGraph> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Container(
          width: screenWidth,
          height: screenHeight * 0.35,
          // color: Colors.red,
          child: CustomPaint(
            foregroundPainter: LinePainter(),
          ),
        ),
        Positioned(
            left: screenWidth * 0.25,
            top: 20,
            child: Hero(
              tag: "one",
              child: Container(
                width: 5,
                height: 5,
                color: Colors.white,
              ),
            )),
        Positioned(
            right: 20,
            top: 60,
            child: Hero(
              tag: "two",
              child: Container(
                width: 5,
                height: 5,
                color: Colors.white,
              ),
            )),
      ],
    );
  }
}

class LinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = Colors.white;

    canvas.drawLine(
      Offset(size.width * 1 / 6, size.height * 1 / 4),
      Offset(size.width * 5 / 6, size.height * 1 / 2),
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

import 'package:flutter/material.dart';

class MyHomeGraph extends StatefulWidget {
  @override
  _MyHomeGraphState createState() => _MyHomeGraphState();
}

class _MyHomeGraphState extends State<MyHomeGraph> {
  List<double> dummyList = [0.6, 0.9, 1, 0.7, 0.88];
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
        Row(
          children: [
            Container(
              width: 40,
            ),
            for (int i = 0; i < 5; i++)
              Container(
                width: (screenWidth - 40) / 5,
                height: screenHeight * 0.35,
                // color: Colors.orange,
                child: Stack(
                  children: [
                    if (i == 0)
                      Positioned(
                        left: ((screenWidth - 40) / 10) - 6,
                        bottom: screenHeight * 0.0455 +
                            (dummyList[i] * (screenHeight * 0.16)),
                        child: Container(
                          width: 12,
                          height: 12,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(105, 255, 255, 255),
                              borderRadius: BorderRadius.circular(45)),
                        ),
                      ),
                    Positioned(
                      left: ((screenWidth - 40) / 10) - 2.5,
                      bottom: screenHeight * 0.05 +
                          (dummyList[i] * (screenHeight * 0.16)),
                      child: Container(
                        width: 5,
                        height: 5,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(45)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: screenHeight * 0.05),
                      child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            width: 1,
                            height: dummyList[i] * (screenHeight * 0.16),
                            color: Color.fromARGB(95, 255, 255, 255),
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: screenHeight * 0.02),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          "Data",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              )
          ],
        ),
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

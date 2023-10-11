import 'package:flutter/material.dart';

class MyCenterDetailApp extends StatefulWidget {
  const MyCenterDetailApp({super.key});

  @override
  State<MyCenterDetailApp> createState() => _MyCenterDetailAppState();
}

class _MyCenterDetailAppState extends State<MyCenterDetailApp> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: screenWidth * 0.8,
          height: screenHeight * 0.5,
          // color: Colors.red,
          child: Center(
            child: Container(
              width: screenWidth * 0.75,
              height: screenHeight * 0.4,
              // color: Colors.green,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: screenWidth * 0.75,
                    height: screenHeight * 0.05,
                    // color: Colors.amber,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                            width: screenWidth * 0.10,
                            height: screenHeight * 0.10,
                            child: const FittedBox(
                              child: Icon(
                                Icons.wb_sunny_outlined,
                                color: Colors.white,
                              ),
                            )),
                        SizedBox(
                          width: screenWidth * 0.05,
                        ),
                        Container(
                            width: screenWidth * 0.50,
                            height: screenHeight * 0.05,
                            // color: Colors.amber,
                            child: const FittedBox(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Overcast",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Valak",
                                    fontWeight: FontWeight.bold,
                                  ),
                                )))
                      ],
                    ),
                  ),
                  Container(
                    width: screenWidth * 0.8,
                    height: screenHeight * 0.2,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: (screenWidth * 0.50) - 10,
                            height: screenHeight * 0.2,
                            // color: Colors.amber,
                            child: const FittedBox(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  "21°",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Valak",
                                  ),
                                )),
                          ),
                          Container(
                            width: (screenWidth * 0.25) - 10,
                            height: screenHeight * 0.2,
                            // color: Colors.black,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  width: (screenWidth * 0.25) - 30,
                                  height: screenHeight * 0.05,
                                  child: const FittedBox(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        " 28° C ",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: "Valak",
                                            fontWeight: FontWeight.bold),
                                      )),
                                ),
                                SizedBox(
                                  width: (screenWidth * 0.25) - 30,
                                  child: const Divider(
                                    height: 1,
                                    thickness: 0.5,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  height: screenHeight * 0.0006,
                                ),
                                Container(
                                  width: (screenWidth * 0.25) - 30,
                                  height: screenHeight * 0.05,
                                  child: const FittedBox(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        " 18° C ",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: "Valak",
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )),
                                )
                              ],
                            ),
                          ),
                        ]),
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
            width: screenWidth * 0.2,
            height: screenHeight * 0.5,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                          width: 30, height: 2, color: Colors.white60),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Container(
                        width: 2,
                        height: (screenHeight * 0.5) - 64,
                        color: Colors.white60,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: 30,
                        height: 2,
                        color: Colors.white60,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 8.0,
                        top: 0.25 * ((screenHeight * 0.5) - 94) + 22,
                      ),
                      child: Icon(
                        Icons.wb_sunny,
                        size: 30,
                        color: Color.fromARGB(255, 255, 255, 132),
                      ),
                    ),
                  ),
                  const Align(
                    alignment: Alignment.topCenter,
                    child: Icon(
                      Icons.single_bed,
                      color: Colors.white,
                    ),
                  ),
                  const Align(
                    alignment: Alignment.bottomCenter,
                    child: Icon(
                      Icons.single_bed,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            )),
      ],
    );
  }
}

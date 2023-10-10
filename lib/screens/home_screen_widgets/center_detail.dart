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
                    height: screenHeight * 0.1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                            width: screenWidth * 0.1,
                            height: screenHeight * 0.05,
                            child: const FittedBox(
                              child: Icon(
                                Icons.wb_sunny_outlined,
                                color: Colors.white,
                              ),
                            )),
                        SizedBox(
                          width: screenWidth * 0.02,
                        ),
                        Container(
                            width: screenWidth * 0.50,
                            height: screenHeight * 0.05,
                            // color: Colors.amber,
                            child: const FittedBox(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Thunderstorm",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Manrope",
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
                                    fontFamily: "Manrope",
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
                                  child: FittedBox(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        " 28° C ",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: "Manrope",
                                        ),
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
                                Container(
                                  width: (screenWidth * 0.25) - 30,
                                  height: screenHeight * 0.05,
                                  child: FittedBox(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        " 18° C ",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: "Manrope",
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
          // color: Colors.red,
        ),
      ],
    );
  }
}

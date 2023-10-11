import 'package:flutter/material.dart';
import 'package:weather_application_2/screens/home_screen_widgets/center_detail.dart';
import '../variables.dart';
import 'home_screen_widgets/top_appbar.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({super.key});

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: screenWidth,
        height: screenHeight,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: backgroundGradient[0].colors,
                stops: backgroundGradient[0].ratio,
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child: Column(
          children: [
            Container(
              width: screenWidth,
              height: screenHeight * 0.15,
              // color: Colors.red,
              child: MyTopAppBar(),
            ),
            Container(
              width: screenWidth,
              height: screenHeight * 0.5,
              // color: Colors.amber,
              child: MyCenterDetailApp(),
            ),
            Container(
              width: screenWidth,
              height: screenHeight * 0.35,
              // color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}


// Screen Parts
// Top: 15%
// Center: 45%
// Bottom: 40%
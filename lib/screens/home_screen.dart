import 'package:flutter/material.dart';
import 'package:weather_application_2/screens/home_screen_widgets/center_detail.dart';
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
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(255, 125, 194, 250),
          Color.fromARGB(255, 0, 78, 141)
        ], stops: [
          0.2,
          1.0
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
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
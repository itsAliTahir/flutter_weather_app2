import 'package:flutter/material.dart';

class MyTopAppBar extends StatefulWidget {
  const MyTopAppBar({super.key});

  @override
  State<MyTopAppBar> createState() => _MyTopAppBarState();
}

class _MyTopAppBarState extends State<MyTopAppBar> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Container(
          height: screenHeight * 0.04,
        ),
        Container(
          width: screenWidth,
          height: screenHeight * 0.06,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                child: Center(
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.menu,
                        color: Colors.white,
                        size: 26,
                      )),
                ),
              ),
              SizedBox(
                width: screenWidth * 0.6,
                height: screenHeight * 0.06,
                // color: Colors.amber,
                child: Center(
                    child: Text(
                  "Amsterdam",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: screenHeight * 0.03,
                      fontFamily: "Manrope",
                      // fontWeight: FontWeight.bold
                      fontWeight: FontWeight.w400),
                )),
              ),
              SizedBox(
                child: Center(
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search,
                        color: Colors.white,
                        size: 26,
                      )),
                ),
              ),
            ],
          ),
        ),
        Center(
          child: Container(
            width: screenWidth * 0.5,
            height: screenHeight * 0.05,
            // color: Colors.green,
            child: Align(
                alignment: Alignment.topCenter,
                child: Text(
                  "Sat, 7:30 PM",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: screenHeight * 0.02,
                      fontFamily: "Manrope",
                      // fontWeight: FontWeight.bold
                      fontWeight: FontWeight.w400),
                )),
          ),
        )
      ],
    );
  }
}

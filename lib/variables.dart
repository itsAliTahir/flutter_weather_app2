import 'package:flutter/material.dart';

// gradient: LinearGradient(colors: [
//           Color.fromARGB(255, 126, 26, 144),
//           Color.fromARGB(255, 216, 76, 1)
//         ], stops: [
//           0.2,
//           1.0
//         ],
// )
class BackgroundGradient {
  List<Color> colors;
  List<double> ratio;
  BackgroundGradient({required this.colors, required this.ratio});
}

List<BackgroundGradient> backgroundGradient = [
  BackgroundGradient(colors: [
    const Color.fromARGB(255, 125, 194, 250),
    const Color.fromARGB(255, 0, 78, 141)
  ], ratio: [
    0.2,
    1.0
  ]),
  BackgroundGradient(colors: [
    const Color.fromARGB(255, 255, 215, 113),
    const Color.fromARGB(255, 255, 166, 0)
  ], ratio: [
    0.2,
    1.0
  ]),
  // [
  //   const Color.fromARGB(255, 255, 215, 113),
  //   const Color.fromARGB(255, 255, 166, 0)
  // ],
  // [
  //   const Color.fromARGB(255, 197, 197, 197),
  //   const Color.fromARGB(255, 105, 105, 105)
  // ],
];

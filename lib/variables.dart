import 'package:flutter/material.dart';

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
    const Color.fromARGB(255, 255, 183, 50),
    const Color.fromARGB(255, 255, 215, 113),
    const Color.fromARGB(255, 255, 166, 0)
  ], ratio: [
    0.0,
    0.25,
    1.0
  ]),
  BackgroundGradient(colors: [
    const Color.fromARGB(255, 188, 141, 184),
    const Color.fromARGB(255, 93, 94, 144),
  ], ratio: [
    0.4,
    1.0
  ]),
];

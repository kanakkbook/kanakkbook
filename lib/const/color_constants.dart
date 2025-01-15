import 'package:flutter/material.dart';

class ColorConstants {
  static const LinearGradient customGradient = LinearGradient(
  colors: [
    //Color.fromARGB(255, 235, 198, 15),
    Color(0xFFf96302), // Hex code #fcfc5f
    Color.fromARGB(255, 248, 158, 80), 
    Color.fromARGB(255, 247, 208, 176)
    // Hex code #d6f9a2
  ],
  begin: Alignment.topLeft,
  end: Alignment.topRight,
);
static const primary=Color(0xFFf96302);
static final Color whiteOpacity=Colors.white.withOpacity(.6);
static const secondary=Color.fromARGB(255, 248, 158, 80);
static Color whiteColor=const Color(0xffffffff);

}
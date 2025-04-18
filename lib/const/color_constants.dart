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
 static const LinearGradient twoGradient = LinearGradient(
  colors: [
    //Color.fromARGB(255, 235, 198, 15),
     Color(0xFFf96302), // Hex code #fcfc5f
    Color.fromARGB(255, 248, 158, 80), 
    Color.fromARGB(255, 247, 208, 176)
    // Hex code #d6f9a2
  ],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
);
static const primary=Color(0xFFf96302);
static final Color whiteOpacity=Colors.white.withOpacity(.6);
static const secondary=Color.fromARGB(255, 248, 158, 80);
static const tertiary=Color.fromARGB(255, 247, 208, 176);
static Color whiteColor=const Color(0xffffffff);
static Color greyColor=const Color(0xff808080);
static Color lightGreyColr=Colors.grey[400]!;
static Color extraLightGrey=Colors.grey[200]!;
static Color greenColor= Colors.green[800]!;
static Color redColor=Colors.red[800]!;
// static Color blackColor=const Color(0x00000000);

}
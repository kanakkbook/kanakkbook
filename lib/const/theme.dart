import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get lightMood => ThemeData(
      // Text input theme
      iconTheme:const IconThemeData(color:Colors.grey),
      scrollbarTheme: ScrollbarThemeData(thumbColor: MaterialStateProperty.all<Color>(Colors.grey), trackColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 25, 47, 174)), trackVisibility: MaterialStateProperty.all<bool>(false)),
      inputDecorationTheme: const InputDecorationTheme(
        filled: true,
        fillColor: Colors.white,
        labelStyle:TextStyle(color: Colors.black),
        hintStyle: TextStyle(color: Colors.black),
        helperStyle: TextStyle(color:   Colors.black),
        iconColor:  Colors.black,
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey, width: 1),
          borderRadius:  BorderRadius.all(Radius.circular(4)),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color:  Color.fromARGB(255, 25, 47, 174), width: 1),
          borderRadius:  BorderRadius.all(Radius.circular(4)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: const Color.fromARGB(255, 25, 47, 174), width: 1),
          borderRadius: BorderRadius.all(Radius.circular(4)),
        ),
      ),
      popupMenuTheme: PopupMenuThemeData(color:Colors.grey, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4))),
      primaryColor: Colors.indigo,
      textTheme: TextTheme(
    headlineLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
    bodyMedium: TextStyle(fontSize: 13, color: Colors.black),
    bodySmall: TextStyle(fontSize: 10, color: Colors.black),
    labelSmall:TextStyle(fontSize: 16, color: Colors.grey[400]) ,
    titleLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
    titleMedium: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    titleSmall: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
    bodyLarge: TextStyle(fontSize: 15, fontWeight: FontWeight.w400,color: Colors.black),
    
  ),
      // Card Theme
      cardTheme: CardTheme(color:Colors.grey[200], elevation: 1, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4), side: const BorderSide(color: Colors.transparent))),
      // Background Color
      scaffoldBackgroundColor: Colors.grey[100],
      colorScheme: ColorScheme.fromSwatch().copyWith(
        scrim: Colors.black,
        background: Colors.grey[100],
        primary: const Color.fromARGB(255, 25, 47, 174),
        secondary: const Color.fromARGB(255, 80, 44, 143),
        surface: Colors.blueGrey[100],
        onPrimary: const Color.fromARGB(178, 27, 29, 161),
        onSecondary: Colors.deepPurple[300],
        onSurface: const Color.fromARGB(255, 64, 217, 251),
        onBackground: const Color.fromARGB(255, 71, 70, 70),
        brightness: Brightness.light,
        error: const Color.fromARGB(255, 98, 11, 4),
        onError: const Color.fromARGB(255, 189, 15, 3),
      ));}

//   static ThemeData get darkThemeData => lightMood.copyWith(
//         primaryColor: UiColor.primaryColor,
//         textTheme: TextTheme(
//           displayLarge: TextStyle(fontSize: 72.0, fontWeight: FontWeight.w900, color: UiColor.primaryTextColor),
//           titleLarge: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic, fontWeight: FontWeight.w700, color: UiColor.primaryTextColor),
//           bodyMedium: TextStyle(fontSize: 14.0, color: UiColor.primaryTextColor),
//           bodySmall: TextStyle(fontSize: 12.0, color: UiColor.secondaryTextColor),
//         ),
//         // Card Theme
//         cardTheme: CardTheme(color: UiColor.cardOnBackgroundColor, elevation: ThemeConst.defaultElevation, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(ThemeConst.defaultBorderRadius), side: const BorderSide(color: Colors.transparent))),
//         // Background Color
//         scaffoldBackgroundColor: UiColor.scaffoldBackgroundColor,
//         colorScheme: ColorScheme.fromSwatch().copyWith(
//           background: UiColor.scaffoldBackgroundColor,
//           primary: UiColor.primaryColor,
//           secondary: UiColor.primaryColor,
//           surface: UiColor.scaffoldBackgroundColor,
//           onPrimary: UiColor.primaryTextColor,
//           onSecondary: UiColor.primaryTextColor,
//           onSurface: UiColor.primaryTextColor,
//           onBackground: UiColor.primaryTextColor,
//           brightness: Brightness.dark,
//           error: UiColor.errorColor,
//           onError: UiColor.onErrorColor,
//         ),
//       );
// }

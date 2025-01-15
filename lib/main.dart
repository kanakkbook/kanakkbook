import 'package:flutter/material.dart';
import 'package:kanakk_book/const/theme.dart';
import 'package:kanakk_book/modules/login/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kanakk Book',
      theme: AppTheme.lightMood,
      home:  const LoginScreen(),
    );
  }
}






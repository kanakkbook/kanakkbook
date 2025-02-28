import 'package:flutter/material.dart';
import 'package:kanakk_book/const/theme.dart';
import 'package:kanakk_book/modules/home_screen/view_model/home_view_model.dart';
import 'package:kanakk_book/modules/login/login_screen.dart';
import 'package:provider/provider.dart';

void main() {
  
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) => HomeViewModel()),
    ],
  child:  MyApp(),
  ),
    );
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






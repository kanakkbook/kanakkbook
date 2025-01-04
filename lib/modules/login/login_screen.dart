import 'package:flutter/material.dart';
import 'package:kanakk_book/custom_widgets/custom_text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomTextField(value: "",hintText: "User name",labelText: "user name",)
      ],
    );
  }
}
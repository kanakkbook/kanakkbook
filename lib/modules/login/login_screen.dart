import 'package:flutter/material.dart';
import 'package:kanakk_book/const/color_constants.dart';
import 'package:kanakk_book/custom_widgets/primary_button.dart';
import 'package:kanakk_book/custom_widgets/primary_textfiled.dart';
import 'package:kanakk_book/modules/bottom_navigation/bottom_navigation.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                  child: Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Image.asset('lib/assets/images/login.png'),
              )),
               Text(
                'LOGIN',
                style: TextStyle(
                  fontSize: 22,
                  color:ColorConstants.primary.withOpacity(.7),
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const PrimaryTextfield(
                hintText: 'Email',
                prefixIcon: Icon(
                  Icons.email_outlined,
                  size: 16,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const PrimaryTextfield(
                prefixIcon: Icon(
                  Icons.lock_open,
                  size: 16,
                ),
                hintText: 'Password',
                suffixIcon: Icon(
                  Icons.remove_red_eye_outlined,
                  size: 16,
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              PrimaryButton(
                height: 10,
                width: 200,
                text: 'LOGIN',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MainScreen(),
                      ));
                },
                backgroundColor: ColorConstants.secondary,
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 15,
                ),
                borderRadius: 15,
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}

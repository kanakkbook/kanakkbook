import 'package:flutter/material.dart';
import 'package:kanakk_book/const/color_constants.dart';
import 'package:kanakk_book/custom_widgets/primary_button.dart';
import 'package:kanakk_book/custom_widgets/primary_textfiled.dart';
import 'package:kanakk_book/modules/login/home_screen/home_screen.dart';

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
                child: Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Image.asset('lib/assets/images/login.png'),
            )),
            const Text(
              'LOGIN',
              style: TextStyle(
                fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const PrimaryTextfiled(
              hintText: 'Email',
              prefixIcon: Icon(
                Icons.email_outlined,
                size: 16,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const PrimaryTextfiled(
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
              height: 30,
            ),
            SizedBox(
              width: double.infinity,
              child: PrimaryButton(
                text: 'LOGIN',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ));
                },
                backgroundColor: ColorConstants.primary,
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 15,
                ),
                borderRadius: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

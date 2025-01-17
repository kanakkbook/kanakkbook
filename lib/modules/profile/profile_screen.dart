import 'package:flutter/material.dart';
import 'package:kanakk_book/const/color_constants.dart';
import 'package:kanakk_book/modules/profile/elements/profile_listview.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.whiteColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        // iconTheme: IconThemeData(color: ColorConstants.whiteColor),
        backgroundColor: ColorConstants.primary,
        title: Text(
          'Profile',
          style: TextStyle(
            color: ColorConstants.whiteColor,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                        color: ColorConstants.greyColor.withOpacity(0.50),
                      )),
                  child: const Icon(
                    Icons.person_2_rounded,
                    size: 100,
                    color: ColorConstants.secondary,
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const ProfileListviewWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

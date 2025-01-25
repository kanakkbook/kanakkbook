import 'package:flutter/material.dart';
import 'package:kanakk_book/const/color_constants.dart';

class ProfileExpansiontileWidget extends StatelessWidget {
  const ProfileExpansiontileWidget(
      {super.key,
      required this.userName,
      required this.email,
      required this.phoneNumber});

  final String userName;
  final String email;
  final String phoneNumber;
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      collapsedShape: const Border(),
      shape: const Border(),
      backgroundColor: ColorConstants.whiteColor,
      expandedCrossAxisAlignment: CrossAxisAlignment.start,
      collapsedBackgroundColor: ColorConstants.whiteColor,
      expandedAlignment: Alignment.topLeft,
      tilePadding: const EdgeInsets.symmetric(horizontal: 15),
      childrenPadding: const EdgeInsets.symmetric(horizontal: 15),
      leading: const Icon(
        Icons.person_3_outlined,
        size: 20,
      ),
      title: Text(
        userName,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
      ),
      children: [
        Text(
          email,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          phoneNumber,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}

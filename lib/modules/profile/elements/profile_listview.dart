import 'package:flutter/material.dart';
import 'package:kanakk_book/const/color_constants.dart';

class ProfileListviewWidget extends StatelessWidget {
  const ProfileListviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> title = ['Dark Mode', 'Settings', 'Log Out'];
    List<IconData> icons = [
      Icons.dark_mode_outlined,
      Icons.settings_outlined,
      Icons.logout,
    ];

    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 0),
            blurRadius: 5,
            spreadRadius: 0,
            color: Colors.black.withOpacity(0.15),
          )
        ],
        color: ColorConstants.whiteColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Material(
            color: Colors.transparent,
            child: ListTile(
              leading: Icon(icons[index]),
              title: Text(
                title[index],
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
              trailing: index == 0
                  ? SizedBox(
                    child: Switch(
                        activeColor: ColorConstants.primary,
                        value: true,
                        onChanged: (value) {},
                      ),
                  )
                  : const SizedBox(),
              onTap: () {},
            ),
          );
        },
        separatorBuilder: (context, index) => const SizedBox(
          height: 0,
        ),
        itemCount: title.length,
      ),
    );
  }
}
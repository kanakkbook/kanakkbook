import 'package:flutter/material.dart';
import 'package:kanakk_book/const/color_constants.dart';
import 'package:kanakk_book/modules/profile/elements/profile_expansiontile_widget.dart';

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
      padding: const EdgeInsets.symmetric(
        horizontal: 0,
        vertical: 10,
      ),
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
      child: Column(
        children: [
          const ProfileExpansiontileWidget(
            userName: 'Muhammed',
            email: 'muhammed@gmail.com',
            phoneNumber: '9867434467',
          ),
          const SizedBox(
            height: 0,
          ),
          ListView.separated(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Material(
                color: Colors.transparent,
                child: ListTile(
                  leading: Icon(
                    icons[index],
                    size: 20,
                  ),
                  title: Text(
                    title[index],
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                  trailing: index == 0
                      ? Transform.scale(
                          scale: 0.70,
                          child: Switch(
                            padding: EdgeInsets.zero,
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
        ],
      ),
    );
  }
}

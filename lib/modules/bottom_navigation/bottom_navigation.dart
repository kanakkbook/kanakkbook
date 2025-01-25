import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:kanakk_book/const/color_constants.dart';
import 'package:kanakk_book/modules/home_screen/home_screen.dart';
import 'package:kanakk_book/modules/profile/profile_screen.dart';
import 'package:kanakk_book/modules/users_list/user_list_page.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final pageController = PageController(initialPage: 0);
    NotchBottomBarController notchBottomBarController =
        NotchBottomBarController();
    final List<Widget> bottomBarPages = [
      const HomeScreen(),
      const UserListPage(),
      const ProfileScreen(),
    ];
    return Scaffold(
      body: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: List.generate(
            bottomBarPages.length, (index) => bottomBarPages[index]),
      ),
      extendBody: true,
      bottomNavigationBar: AnimatedNotchBottomBar(
        notchBottomBarController: notchBottomBarController,
        bottomBarItems:  [
          BottomBarItem(
            inActiveItem: Icon(
              Icons.home_filled,
              color: ColorConstants.primary,
            ),
            activeItem: Icon(
              Icons.home_filled,
              color: ColorConstants.secondary,
            ),
          ),
          BottomBarItem(
            inActiveItem: Padding(
              padding: EdgeInsets.only(bottom: 30),
              child: Icon(
                Icons.supervisor_account,
                color: ColorConstants.primary,
              ),
            ),
            activeItem: InkWell(
              onTap: ()=> Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MainScreen(),
                      )),
              child: Icon(
                Icons.add,
                color: ColorConstants.secondary,
              ),
            ),
          ),
          BottomBarItem(
            inActiveItem: Padding(
              padding: EdgeInsets.only(bottom: 30),
              child: Icon(
                Icons.person,
                color: ColorConstants.primary,
              ),
            ),
            activeItem: Icon(
              Icons.star,
              color: ColorConstants.secondary,
            ),
          ),
        ],
        onTap: (int value) {
          pageController.jumpToPage(value);
        },
        kIconSize: 15,
        kBottomRadius: 5,
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  final NotchBottomBarController? controller;

  const Page1({Key? key, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: Center(
        /// adding GestureDetector
        child: GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () {
            controller?.jumpTo(2);
          },
          child: const Text('Page 1'),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:kanakk_book/const/color_constants.dart';
import 'package:kanakk_book/modules/home_screen/elements/home_card_list.dart';
import 'package:kanakk_book/modules/home_screen/elements/home_header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(gradient: ColorConstants.customGradient),
      child: const Column(
        children: [
          Expanded(flex: 2, child: HomeHeader()),
          Expanded(
            flex: 5,
            child: HomeCardList(),
          ),
        ],
      ),
    );
  }
}

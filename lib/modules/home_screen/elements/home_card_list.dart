import 'package:flutter/material.dart';
import 'package:kanakk_book/const/color_constants.dart';

class HomeCardList extends StatelessWidget {
  const HomeCardList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: ColorConstants.whiteOpacity,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Padding(
        padding: const EdgeInsets.only(top: 50, left: 30.0, right: 20),
        child: Wrap(
          spacing: 50,
          runSpacing: 50,
          children: [
            for (int i = 0; i < 6; i++)
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Add border radius
                ),
                elevation: 2,
                color: Colors.white,
                shadowColor: ColorConstants.secondary,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      const Icon(
                        Icons.people_alt,
                        color: ColorConstants.secondary,
                      ),
                      Text(
                        "home",
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall
                            ?.copyWith(color: ColorConstants.primary),
                      )
                    ],
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}

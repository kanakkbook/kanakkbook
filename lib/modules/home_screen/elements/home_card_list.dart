import 'package:flutter/material.dart';
import 'package:kanakk_book/const/color_constants.dart';
import 'package:kanakk_book/modules/home_screen/view_model/home_view_model.dart';
import 'package:provider/provider.dart';

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
            for (var e in context.read<HomeViewModel>().homeWidgets)
              InkWell(
                onTap: ()=>Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => e.screen??SizedBox.shrink(),
                      )),
                child: SizedBox(
                  height: 80,width: 80,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10), // Add border radius
                    ),
                    elevation: 2,
                    color: Colors.white,
                    shadowColor: ColorConstants.secondary,
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                           Icon(
                            e.icon,
                            color: ColorConstants.secondary,
                          ),
                          Text(
                            e.name??"",
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(color: ColorConstants.primary),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}

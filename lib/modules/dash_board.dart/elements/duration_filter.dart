import 'package:flutter/material.dart';
import 'package:kanakk_book/const/color_constants.dart';

class DurationFilter extends StatelessWidget {
  final String? title;
  final bool? isSelected;
  const DurationFilter({super.key,this.title,this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,width: 70,
      decoration: BoxDecoration(
        color:isSelected==true?ColorConstants.primary: Colors.white,
        borderRadius: BorderRadius.circular(5),border: Border.all(color:isSelected==true?ColorConstants.primary: ColorConstants.extraLightGrey)),
      child: Padding(
        padding: const EdgeInsets.all(2),
        child: Center(child: Text(title??"",style:  Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: 13,color: isSelected==true?Colors.white:Colors.black))),
      ),
    );
  }
}
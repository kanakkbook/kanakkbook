import 'package:flutter/material.dart';
import 'package:kanakk_book/const/color_constants.dart';

class PrimaryButton extends StatelessWidget {
  final String? text;
  final IconData? icon;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color? iconColor;
  final Color textColor;
  final double? borderRadius;
  final EdgeInsets? padding;
  final double? height;
  final double? width;

  const PrimaryButton({
    Key? key,
     this.text,
    required this.onPressed,
    this.icon,
    this.backgroundColor =ColorConstants.secondary,
    this.textColor = Colors.white,
    this.borderRadius,
    this.iconColor,
    this.padding,this.height=50,this.width
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      
      height: height,
      minWidth: width,
      onPressed: onPressed,
      color: backgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius??14),
      ),
      padding: padding,
      child: Row(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if(icon!=null)Icon(icon,color: iconColor??ColorConstants.secondary,),
        if(text!=null)  Text(
            text??"",
            style: TextStyle(
              color: textColor,
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

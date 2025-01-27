import 'package:flutter/material.dart';
import 'package:kanakk_book/const/color_constants.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color textColor;
  final double? borderRadius;
  final EdgeInsets? padding;
  final double? height;
  final double? width;

  const PrimaryButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.backgroundColor =ColorConstants.secondary,
    this.textColor = Colors.white,
    this.borderRadius,
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
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

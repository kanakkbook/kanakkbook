import 'package:flutter/material.dart';
import 'package:kanakk_book/const/color_constants.dart';

class PrimaryTextfiled extends StatelessWidget {
  const PrimaryTextfiled({
    super.key,
    this.labelText,
    this.onChanged,
    this.hintText,
    this.width = double.infinity,
    this.prefixIcon,
    this.suffixIcon,
  });

  final String? labelText;
  final void Function(String)? onChanged;
  final String? hintText;
  final double? width;
  final Widget? prefixIcon;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        hintStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        filled: true,
        fillColor: Colors.white,
        border: InputBorder.none,
        contentPadding: const EdgeInsets.symmetric(
          vertical: 18.0,
          horizontal: 15,
        ),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide:
               BorderSide(color:Colors.grey[300]!, width: 0.5),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide:
              const BorderSide(color: ColorConstants.secondary, width: .5),
        ),
      ),
      style: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      cursorColor: Colors.blue,
    );
  }
}

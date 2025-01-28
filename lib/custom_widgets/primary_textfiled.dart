import 'package:flutter/material.dart';
import 'package:kanakk_book/const/color_constants.dart';

class PrimaryTextfield extends StatelessWidget {
  const PrimaryTextfield({
    super.key,
    this.labelText,
    this.onChanged,
    this.hintText,
    this.width = double.infinity,
    this.prefixIcon,
    this.suffixIcon,
    this.maxLines = 1,
    this.icon,
  });

  final String? labelText;
  final void Function(String)? onChanged;
  final String? hintText;
  final double? width;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Widget? icon;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      maxLines: maxLines,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        icon: icon,
        hintStyle: Theme.of(context).textTheme.bodyMedium,
        filled: true,
        fillColor: Colors.white,
        border: InputBorder.none,
        contentPadding: EdgeInsets.only(
          top: maxLines! > 1 ? 16.0 : 12.0, // Adjust top padding for multiline
          bottom: 12.0,
          left: 15.0,
          right: 15.0,
        ),
        prefixIcon: prefixIcon,
        prefixIconConstraints: BoxConstraints(
          minWidth: 40,
          minHeight: maxLines! > 1 ? 60 : 20, // Adjust height for multiline
        ),
        suffixIcon: suffixIcon,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: BorderSide(color: Colors.grey[300]!, width: 0.5),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: const BorderSide(color: ColorConstants.secondary, width: 0.5),
        ),
      ),
      style: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      cursorColor: ColorConstants.secondary );
  }
}

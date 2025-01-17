import 'package:auto_binding_field/auto_binding_field.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String value;
  final String? labelText;
  final void Function(String)? onChanged;
  final String? hintText;
  final double? width;
  final Widget? prefixIcon;
  const CustomTextField({
    super.key,
    required this.value,
    this.onChanged,
    this.labelText,
    this.hintText,
    this.width,this.prefixIcon
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: AutoBindingTextField(
        value: value,
        onChanged: onChanged,
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          labelText: labelText,
          labelStyle: Theme.of(context).textTheme.labelSmall,
          hintText: hintText,
          hintStyle: Theme.of(context).textTheme.labelSmall,
          errorBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: Theme.of(context).colorScheme.primary),
          ),
        ),
      ),
    );
  }
}

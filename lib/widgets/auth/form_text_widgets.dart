import 'package:flutter/material.dart';


class FormTextWidget extends StatelessWidget {
  final String hintText;
  final Color iconColor;
  final double iconSize;
  final IconData prefixIcon;

  const FormTextWidget({
    required this.hintText,
    required this.iconColor,
    required this.iconSize,
    required this.prefixIcon,
  });


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: Icon(
          prefixIcon,
          color: iconColor,
          size: iconSize,
        ),
        hintText: hintText,
      ),
    );
  }
}
import 'package:flutter/material.dart';


class PasswordFormTextWidget extends StatelessWidget {
  final String hintText;
  final Color iconColor;
  final double iconSize;
  final IconData prefixIcon;
  final IconData suffixIcon;

  const PasswordFormTextWidget({
    required this.hintText,
    required this.iconColor,
    required this.iconSize,
    required this.prefixIcon,
    required this.suffixIcon,
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
        suffixIcon: Icon(
          suffixIcon,
          color: iconColor,
          size: iconSize,
        ),
        hintText: hintText,
      ),
    );
  }
}
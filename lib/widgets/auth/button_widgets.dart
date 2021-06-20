import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final Color buttonColor;
  final String buttonText;
  final Color buttonTextColor;
  final Color buttonSideColor;
  final Function() function;

  const ButtonWidget({
    required this.buttonColor,
    required this.buttonText,
    required this.buttonTextColor,
    required this.function,
    required this.buttonSideColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
            primary: buttonColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
                side: BorderSide(color: buttonSideColor)
            )),
        onPressed: function,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 17.0),
          child: Text(
            '$buttonText',
            style: TextStyle(color: buttonTextColor),
          ),
        ),
      ),
    );
  }
}
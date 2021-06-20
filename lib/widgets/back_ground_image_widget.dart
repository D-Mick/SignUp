import 'package:flutter/material.dart';

class BackGroundImageWidget extends StatelessWidget {
  final Widget backGroundImageWidget;

  const BackGroundImageWidget({required this.backGroundImageWidget});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/bg.jpg'), fit: BoxFit.cover),
      ),
      child: backGroundImageWidget,
    );
  }
}
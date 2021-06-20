import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proste_bezier_curve/proste_bezier_curve.dart';
import 'dart:math' as math;

class TransformWidget extends StatelessWidget {
  final double heightSize;
  final String headingText;
  const TransformWidget({
    required this.screenWidth, required this.heightSize, required this.headingText,
  });

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: math.pi / 1,
      child: ClipPath(
        clipper: ProsteBezierCurve(
          position: ClipPosition.top,
          list: [
            BezierCurveSection(
              start: Offset(screenWidth, 0),
              top: Offset(screenWidth / 4 * 3, 40),
              end: Offset(screenWidth / 2, 20),
            ),
            BezierCurveSection(
              start: Offset(screenWidth / 2, 20),
              top: Offset(screenWidth / 4, 0),
              end: Offset(0, 20),
            ),
          ],
        ),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.5 - heightSize,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Transform.rotate(
            angle: math.pi / 1,
            child: Container(
              padding:
              EdgeInsets.symmetric(horizontal: 20, vertical: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () => Navigator.of(context).pop(),
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: CupertinoColors.white,
                      )),
                  SizedBox(
                    height:
                    MediaQuery.of(context).size.height * 0.1 - 40,
                  ),
                  Text(
                    headingText,
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: CupertinoColors.white),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:sign_app/constants.dart';
import 'package:sign_app/screens/auth/login_auth_screen.dart';
import 'package:sign_app/screens/auth/register_auth_screen.dart';
import 'package:sign_app/widgets/auth/button_widgets.dart';
import 'package:sign_app/widgets/back_ground_image_widget.dart';

class OnBoardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: textColorBlue,
      body: SafeArea(
        child: BackGroundImageWidget(
          backGroundImageWidget: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    'wwater',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: textColorWhite,
                    ),
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Water delivery',
                        style: TextStyle(
                            color: textColorWhite,
                            fontSize: 35.0,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'We deliver water at any point of the Earth in 30 minutes',
                        style: TextStyle(
                          color: textColorWhite,
                          fontSize: 18.0,
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      ButtonWidget(
                        function: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginAuthScreen(),
                          ),
                        ),
                        buttonTextColor: textColorBlue,
                        buttonColor: textColorWhite,
                        buttonText: 'Log in',
                        buttonSideColor: textColorWhite,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      ButtonWidget(
                        buttonColor: textColorTransparent,
                        buttonText: 'Sign up',
                        buttonTextColor: textColorWhite,
                        function: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RegisterAuthScreen(),
                          ),
                        ),
                        buttonSideColor: textColorWhite,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

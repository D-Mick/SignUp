import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proste_bezier_curve/proste_bezier_curve.dart';
import 'dart:math' as math;
import 'package:sign_app/constants.dart';
import 'package:sign_app/screens/auth/register_auth_screen.dart';
import 'package:sign_app/widgets/auth/button_widgets.dart';
import 'package:sign_app/widgets/auth/form_text_widgets.dart';
import 'package:sign_app/widgets/auth/password_form_text_widgets.dart';
import 'package:sign_app/widgets/transform_widgets.dart';

class LoginAuthScreen extends StatefulWidget {
  @override
  _LoginAuthScreenState createState() => _LoginAuthScreenState();
}

class _LoginAuthScreenState extends State<LoginAuthScreen> {
  bool isHiddenPassword = false;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TransformWidget(heightSize: 30, screenWidth: screenWidth, headingText: 'Welcome \nBack',),
            Form(
                child: Container(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
              child: Column(
                children: [
                  FormTextWidget(hintText: 'water@gmail.com', iconColor: textGreyColor, iconSize: 20, prefixIcon: Icons.mail_outlined),
                  SizedBox(
                    height: 30,
                  ),
                  PasswordFormTextWidget(hintText: 'Password', iconColor: textGreyColor, iconSize: 20.0, prefixIcon: Icons.lock_outlined, suffixIcon: Icons.visibility),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Forgot password?',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: textColorBlue,
                            ),
                          ))
                    ],
                  ),
                  ButtonWidget(
                    buttonColor: textColorBlue,
                    buttonText: 'Log in',
                    buttonTextColor: textColorWhite,
                    function: () {},
                    buttonSideColor: textColorBlue,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: new Container(
                            margin:
                                const EdgeInsets.only(left: 10.0, right: 15.0),
                            child: Divider(
                              color: textGreyColor,
                              height: 50,
                            )),
                      ),
                      Text(
                        "or",
                        style: TextStyle(color: textGreyColor, fontSize: 16.0),
                      ),
                      Expanded(
                        child: new Container(
                            margin:
                                const EdgeInsets.only(left: 15.0, right: 10.0),
                            child: Divider(
                              color: textGreyColor,
                              height: 50,
                            )),
                      ),
                    ],
                  ),
                  ButtonWidget(
                    buttonColor: textColorWhite,
                    buttonText: 'Sign up',
                    buttonTextColor: textGreyColor,
                    function: () => Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RegisterAuthScreen(),
                      ),
                    ),
                    buttonSideColor: textGreyColor,
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}


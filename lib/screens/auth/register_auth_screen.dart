import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sign_app/constants.dart';
import 'package:sign_app/screens/auth/login_auth_screen.dart';
import 'package:sign_app/widgets/auth/button_widgets.dart';
import 'package:sign_app/widgets/auth/form_text_widgets.dart';
import 'package:sign_app/widgets/auth/password_form_text_widgets.dart';
import 'package:sign_app/widgets/transform_widgets.dart';

class RegisterAuthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TransformWidget(screenWidth: screenWidth, heightSize: 50, headingText: 'Create \nAccount',),
            Form(
                child: Container(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
              child: Column(
                children: [
                  FormTextWidget(iconSize: 20.0, hintText: 'Name', prefixIcon: Icons.person_outlined, iconColor: textGreyColor,),
                  SizedBox(
                    height: 30,
                  ),
                  FormTextWidget(iconSize: 20.0, hintText: 'Email', prefixIcon: Icons.email_outlined, iconColor: textGreyColor,),
                  SizedBox(
                    height: 30,
                  ),
                  PasswordFormTextWidget(iconSize: 20.0, hintText: 'Password', prefixIcon: Icons.lock_outlined, suffixIcon: Icons.visibility, iconColor: textGreyColor,),
                  SizedBox(
                    height: 30,
                  ),
                  ButtonWidget(
                      buttonColor: textColorBlue,
                      buttonText: 'Sign up',
                      buttonTextColor: textColorWhite,
                      function: () {},
                      buttonSideColor: textColorBlue),
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
                      buttonText: 'Log in',
                      buttonTextColor: textGreyColor,
                      function: () => Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginAuthScreen(),
                            ),
                          ),
                      buttonSideColor: textGreyColor),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}


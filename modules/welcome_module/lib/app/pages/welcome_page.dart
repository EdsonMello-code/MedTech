import 'package:commons/main.dart';
import 'package:commons/widgets/common_button.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 32.w,
          ),
          width: context.screenSize.width,
          height: context.screenSize.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 70.0.h,
                ),
                child: CommonImage.signupBackground(),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 34.h,
                  bottom: 16.h,
                ),
                child: CommonText.title(
                  'Welcome to Medtech',
                ),
              ),
              SizedBox(
                width: 257.w,
                child: CommonText.paragraph(
                  'Do you want some help with your health to get better life?',
                  align: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 34.0),
                child: CommonButton(
                  onPressed: () {},
                  child: CommonText(
                    'SIGN UP WITH EMAIL',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.p,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 10.0.h,
                ),
                child: CommonFacebookButton(
                  onPressed: () {},
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 10.0.h,
                  bottom: 12.0.h,
                ),
                child: CommonGoogleButton(
                  onPressed: () {},
                ),
              ),
              CommonTextButton(
                'Login'.toUpperCase(),
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}

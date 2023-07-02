import 'package:commons/main.dart';
import 'package:commons/widgets/common_button.dart';
import 'package:commons_dependencies/main.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final padding = MediaQuery.paddingOf(context);

    return Scaffold(
      body: SingleChildScrollView(
        padding: padding,
        child: Padding(
          padding: EdgeInsets.only(
            top: 16.0.h,
            left: 24.0.w,
            right: 24.0.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 16.0),
                child: CommonBackButton(),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: CommonText.title('Welcome Back!'),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: UnderlineTextFieldWidget(
                  prefix: CommonImage.avatar(),
                  hintText: 'Username',
                ),
              ),
              UnderlineTextFieldWidget(
                prefix: CommonImage.security(),
                hintText: 'Password',
                suffix: CommonText.paragraph('Forgot?'),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 41.0),
                child: CommonButton(
                  child: CommonText(
                    'LOGIN',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 134.0.h),
                child: Center(
                  child: CommonTextButton(
                    'Don’t have an account? Sign Up',
                    onPressed: () {
                      Modular.to.pushNamed('.${CommonRoutes.signUpRoute}');
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

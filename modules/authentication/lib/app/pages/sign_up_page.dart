import 'package:commons/main.dart';
import 'package:commons/widgets/common_button.dart';
import 'package:commons_dependencies/main.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

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
              Padding(
                padding: EdgeInsets.only(bottom: 16.0.w),
                child: const CommonBackButton(),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: CommonText.title('Create your account'),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 16.0),
                child: UnderlineTextFieldWidget(
                  label: 'Your Name',
                ),
              ),
              const UnderlineTextFieldWidget(
                label: 'Mobile Number',
              ),
              const UnderlineTextFieldWidget(
                label: 'Email',
              ),
              const UnderlineTextFieldWidget(
                label: 'Password',
              ),
              Padding(
                padding: EdgeInsets.only(top: 24.0.h),
                child: const CommonButton(
                  child: CommonText(
                    'CREATE ACCOUNT',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15.0.h),
                child: Center(
                  child: CommonTextButton(
                    'Don’t have an account? Sign Up',
                    onPressed: Modular.to.pop,
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

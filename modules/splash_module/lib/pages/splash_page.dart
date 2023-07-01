import 'package:commons/main.dart';
import 'package:commons_dependencies/main.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3), () {
      Modular.to.navigate(CommonRoutes.oboardingRoute);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.commonColors.mainColor,
      body: Stack(
        children: [
          CommonImage.splashBackground(),
          SizedBox(
            width: context.screenSize.width,
            height: context.screenSize.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CommonImage.logo(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

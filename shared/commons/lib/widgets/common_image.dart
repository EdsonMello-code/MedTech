import 'package:commons/main.dart';
import 'package:commons_dependencies/main.dart';
import 'package:flutter/material.dart';

class CommonImage extends StatelessWidget {
  final String imageUrl;
  final Size? size;
  final bool isSvg;

  const CommonImage({
    super.key,
    required this.imageUrl,
    this.size,
    required this.isSvg,
  });

  factory CommonImage.splashBackground() {
    return const CommonImage(
      imageUrl: 'packages/commons/assets/splash_background.png',
      size: Size.infinite,
      isSvg: false,
    );
  }

  factory CommonImage.logo() {
    return const CommonImage(
      imageUrl: 'packages/commons/assets/app_icon.svg',
      isSvg: true,
    );
  }

  factory CommonImage.onboarding() {
    return const CommonImage(
      imageUrl: 'packages/commons/assets/onboarding.png',
      isSvg: false,
    );
  }

  factory CommonImage.onboarding2() {
    return const CommonImage(
      imageUrl: 'packages/commons/assets/onboarding2.svg',
      isSvg: true,
    );
  }

  factory CommonImage.onboarding3() {
    return const CommonImage(
      imageUrl: 'packages/commons/assets/onboarding3.svg',
      isSvg: true,
    );
  }

  factory CommonImage.google() {
    return const CommonImage(
      imageUrl: 'packages/commons/assets/google.svg',
      isSvg: true,
    );
  }

  factory CommonImage.facebook() {
    return const CommonImage(
      imageUrl: 'packages/commons/assets/facebook.svg',
      isSvg: true,
    );
  }

  factory CommonImage.signupBackground() {
    return CommonImage(
      imageUrl: 'packages/commons/assets/signup_background.png',
      isSvg: false,
      size: Size(
        258.w,
        258.w,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isSvg,
      replacement: Image.asset(
        imageUrl,
        fit: BoxFit.cover,
        width: size?.width,
        height: size?.height,
      ),
      child: SvgPicture.asset(
        imageUrl,
        width: size?.width,
        height: size?.height,
      ),
    );
  }
}

import 'package:commons/main.dart';
import 'package:flutter/cupertino.dart';

class OnboardingTileWidget extends StatelessWidget {
  final Widget image;
  final String title;
  final String description;

  const OnboardingTileWidget({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 100.h),
      child: Column(
        children: [
          Center(
            child: SizedBox(
              width: 256.w,
              height: 284.w,
              child: image,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 50.0.h),
            child: Column(
              children: [
                SizedBox(
                  width: 238.w,
                  child: CommonText.title(
                    title,
                    align: TextAlign.center,
                  ),
                ),
                Center(
                  child: SizedBox(
                    width: 254.w,
                    height: 72.h,
                    child: CommonText.paragraph(
                      description,
                      align: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

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
      padding: EdgeInsets.only(top: context.screenSize.width * .257),
      child: Column(
        children: [
          Center(
            child: SizedBox(
              width: 256,
              height: 284,
              child: image,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Column(
              children: [
                SizedBox(
                  width: 238,
                  child: CommonText.title(
                    title,
                    align: TextAlign.center,
                  ),
                ),
                Center(
                  child: SizedBox(
                    width: 254,
                    height: 72,
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

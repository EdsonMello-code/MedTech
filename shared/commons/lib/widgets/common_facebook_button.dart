import 'package:commons/main.dart';
import 'package:commons/widgets/common_button.dart';
import 'package:flutter/material.dart';

class CommonFacebookButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const CommonFacebookButton({
    super.key,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return CommonButton(
      onPressed: onPressed,
      border: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(56),
        side: BorderSide(
          color: context.commonColors.mainColor.withOpacity(.10),
          width: 1,
        ),
      ),
      backgroundColor: context.commonColors.whiteColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 21.0),
            child: CommonImage.facebook(),
          ),
          CommonText(
            'CONTINUE WITH FACEBOOK',
            style: TextStyle(
              color: context.commonColors.mainColor.withOpacity(.75),
              fontSize: 13,
              fontWeight: FontWeight.w700,
            ),
          )
        ],
      ),
    );
  }
}

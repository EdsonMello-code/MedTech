import 'package:commons/main.dart';
import 'package:commons_dependencies/main.dart';
import 'package:flutter/material.dart';

class UnderlineTextFieldWidget extends StatelessWidget {
  final Widget? suffix;
  final Widget? prefix;
  final String? hintText;
  final TextEditingController? controller;
  final String? label;

  const UnderlineTextFieldWidget({
    super.key,
    this.suffix,
    this.controller,
    this.prefix,
    this.hintText,
    this.label,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: GoogleFonts.inter(
        color: context.commonColors.titleTextColor,
        fontSize: 15.p,
        fontWeight: FontWeight.w400,
        letterSpacing: -0.24,
      ),
      decoration: InputDecoration(
        // isDense: true,
        border: UnderlineInputBorder(
          borderSide: BorderSide(
            width: 1.w,
            color: context.commonColors.mainColor.withAlpha(19),
          ),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            width: 1.w,
            color: context.commonColors.mainColor.withAlpha(19),
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            width: 1.w,
            color: context.commonColors.mainColor,
          ),
        ),
        contentPadding: EdgeInsets.only(
          top: 14.h,
          bottom: 16.h,
        ),
        suffix: suffix,
        prefixIcon: Visibility(
          visible: prefix != null,
          child: Padding(
            padding: EdgeInsets.only(right: 14.0.w),
            child: prefix,
          ),
        ),

        prefixIconConstraints: const BoxConstraints.tightFor(),
        hintText: hintText,
        label: CommonText(
          label ?? '',
        ),
        labelStyle: TextStyle(
          color: context.commonColors.textColor,
          fontSize: 15.p,
          fontWeight: FontWeight.w400,
        ),

        floatingLabelStyle: GoogleFonts.inter(
          color: const Color(0x72090F47),
          fontSize: 11.p,
          fontWeight: FontWeight.w400,
        ),

        hintStyle: TextStyle(
          color: context.commonColors.textColor,
          fontSize: 15.p,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
          letterSpacing: -0.24,
        ),
      ),
    );
  }
}

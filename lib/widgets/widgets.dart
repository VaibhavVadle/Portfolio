import 'package:flutter/material.dart';
import '../core/constants/app_color.dart';
import '../core/constants/app_sizes.dart';

class ErrorText extends StatelessWidget {
  final String text;
  final FontWeight? fontWeight;
  final double? fontSize;

  const ErrorText(
    this.text, {
    Key? key,
    this.fontWeight,
    this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: fontSize ?? Sizes.s16.sp,
          color: AppColors.black,
          fontWeight: fontWeight ?? FontWeight.w600,
        ),
      ),
    );
  }
}

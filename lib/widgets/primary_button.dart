import 'package:flutter/material.dart';
import '../core/constants/app_color.dart';
import '../core/constants/app_sizes.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.text,
    required this.onTap,
    this.backgroundColor,
    this.borderRadius,
    this.height,
    this.width,
    this.textStyle,
  });
  final double? height;
  final double? width;
  final Color? backgroundColor;
  final String text;
  final TextStyle? textStyle;
  final BorderRadiusGeometry? borderRadius;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? Sizes.s55.h,
      width: width ?? double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            backgroundColor ?? AppColors.secondary,
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(Sizes.s5.r),
            ),
          ),
        ),
        onPressed: onTap,
        child: Text(
          text,
          style: textStyle ??
              TextStyle(
                fontSize: Sizes.s20.sp,
                color: AppColors.black,
                letterSpacing: Sizes.s1.sp,
                fontWeight: FontWeight.w900,
              ),
        ),
      ),
    );
  }
}

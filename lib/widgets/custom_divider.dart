import 'package:flutter/material.dart';

import '../core/constants/app_sizes.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
    this.margin,
    this.height,
    this.width,
  });
  final EdgeInsetsGeometry? margin;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? EdgeInsets.symmetric(vertical: Sizes.s48.h),
      width: width ?? double.infinity,
      height: height ?? Sizes.s1.w,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.black,
            Colors.white,
            Colors.black,
          ],
          begin: Alignment.centerLeft,
          end: Alignment.bottomRight,
        ),
      ),
    );
  }
}

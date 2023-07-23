import 'package:flutter/material.dart';
import '../core/constants/app_color.dart';
import '../core/constants/app_sizes.dart';

class NavButton extends StatelessWidget {
  const NavButton({super.key, required this.text, this.onTap, this.textStyle});
  final String text;
  final Function()? onTap;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: Sizes.s15.w,
      ),
      child: TextButton(
        onPressed: onTap ?? () {},
        child: Text(
          text,
          style: textStyle ??
              TextStyle(
                fontSize: Sizes.s16.sp,
                letterSpacing: Sizes.s2.sp,
                color: AppColors.white,
                fontWeight: FontWeight.normal,
              ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../core/constants/app_color.dart';
import '../core/constants/app_sizes.dart';

class SkillCard extends StatelessWidget {
  const SkillCard({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        right: Sizes.s14.w,
        bottom: Sizes.s14.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: Sizes.s18.w,
        vertical: Sizes.s9.h,
      ),
      decoration: BoxDecoration(
        color: AppColors.lightGrey,
        borderRadius: BorderRadius.circular(Sizes.s5.r),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: Sizes.s15.sp,
          color: AppColors.black,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}

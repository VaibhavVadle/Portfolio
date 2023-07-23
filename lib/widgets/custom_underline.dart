import 'package:flutter/material.dart';

import '../core/constants/app_color.dart';
import '../core/constants/app_sizes.dart';

class CustomUnderline extends StatelessWidget {
  const CustomUnderline({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: Sizes.s25.h),
      height: Sizes.s5.h,
      width: Sizes.s36.w,
      decoration: BoxDecoration(
        color: AppColors.secondary,
        borderRadius: BorderRadius.circular(Sizes.s100.r),
      ),
    );
  }
}

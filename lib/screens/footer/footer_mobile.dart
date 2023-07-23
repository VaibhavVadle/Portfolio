import 'package:flutter/material.dart';
import '../../core/constants/app_color.dart';
import '../../core/constants/app_sizes.dart';
import '../../core/utils/screen_util.dart';
import '../../widgets/custom_divider.dart';
import '../../widgets/footer_logo.dart';
import '../../widgets/social_ref.dart';

class FooterMobile extends StatelessWidget {
  const FooterMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        vertical: Sizes.s48.h,
        horizontal: ScreenUtil().screenWidth * 0.05,
      ),
      decoration: BoxDecoration(
        color: AppColors.black,
        border: BorderDirectional(
          top: BorderSide(
            color: AppColors.grey,
            width: Sizes.s1.w,
          ),
        ),
      ),
      child: const Column(
        children: [
          FooterLogo(),
          CustomDivider(),
          SocialRef(),
        ],
      ),
    );
  }
}

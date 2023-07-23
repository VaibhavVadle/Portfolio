import 'package:flutter/material.dart';
import '../../core/constants/app_color.dart';
import '../../core/constants/app_sizes.dart';
import '../../core/utils/screen_util.dart';
import '../../widgets/footer_logo.dart';
import '../../widgets/social_ref.dart';

class FooterDesktop extends StatelessWidget {
  const FooterDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        vertical: Sizes.s48.h,
        horizontal: ScreenUtil().screenWidth * 0.2,
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
      child: Column(
        children: [
          const FooterLogo(),
          Container(
            margin: EdgeInsets.symmetric(vertical: Sizes.s48.h),
            width: double.infinity,
            height: Sizes.s1.w,
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
          ),
          const SocialRef(),
        ],
      ),
    );
  }
}

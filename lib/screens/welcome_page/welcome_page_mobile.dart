import 'package:flutter/material.dart';
import '../../core/constants/app_assets.dart';
import '../../core/constants/app_color.dart';
import '../../core/constants/app_sizes.dart';
import '../../core/utils/screen_util.dart';
import '../../provider/scroll_provider.dart';
import '../../widgets/primary_button.dart';
import 'package:provider/provider.dart';

class WelcomePageMobile extends StatefulWidget {
  const WelcomePageMobile({super.key});

  @override
  State<WelcomePageMobile> createState() => _WelcomePageMobileState();
}

class _WelcomePageMobileState extends State<WelcomePageMobile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: AppColors.primary,
        image: DecorationImage(
          fit: BoxFit.cover,
          filterQuality: FilterQuality.high,
          opacity: 0.2,
          image: AssetImage(
            AppAssets.darkBackground,
          ),
        ),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: ScreenUtil().screenWidth * 0.12,
        vertical: Sizes.s180.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Hello, Welcome",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: Sizes.s28.sp,
              color: AppColors.secondary,
            ),
          ),
          SizedBox(height: Sizes.s20.h),
          Text(
            "I'M VAIBHAV VADLE",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: Sizes.s44.sp,
              letterSpacing: Sizes.s3,
              fontWeight: FontWeight.w600,
              color: AppColors.white,
            ),
          ),
          SizedBox(height: Sizes.s25.h),
          Text(
            "A Flutter Developer aiming to design and develop application which enhance \nmy knowledge, skills and make people's lives simple",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: Sizes.s20.sp,
              color: AppColors.grey900,
            ),
          ),
          SizedBox(height: Sizes.s50.h),
          PrimaryButton(
            text: "CONTACT",
            width: Sizes.s230.w,
            onTap: () {
              context.read<ScrollProvider>().scrollToContact();
            },
          ),
        ],
      ),
    );
  }
}

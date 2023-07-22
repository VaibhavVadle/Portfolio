import 'package:flutter/material.dart';
import 'package:protfolio_web/core/constants/app_assets.dart';
import 'package:protfolio_web/core/constants/app_color.dart';
import 'package:protfolio_web/core/constants/app_sizes.dart';
import 'package:protfolio_web/core/utils/screen_util.dart';
import 'package:protfolio_web/widgets/primary_button.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container1 extends StatefulWidget {
  const Container1({super.key});

  @override
  State<Container1> createState() => _Container1State();
}

class _Container1State extends State<Container1> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (context) => desktopContainer1(),
      mobile: (context) => mobileContainer(),
    );
  }

  Widget mobileContainer() {
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
            text: "PROJECTS",
            width: Sizes.s230.w,
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Widget desktopContainer1() {
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
              letterSpacing: Sizes.s5,
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
          SizedBox(
            height: Sizes.s55.h,
            width: Sizes.s240.w,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  AppColors.secondary,
                ),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(Sizes.s5.r),
                  ),
                ),
              ),
              onPressed: () {},
              child: Text(
                "PROJECTS",
                style: TextStyle(
                  fontSize: Sizes.s20.sp,
                  color: AppColors.black,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

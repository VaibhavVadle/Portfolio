import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../core/constants/app_string.dart';
import '../../provider/scroll_provider.dart';
import 'package:provider/provider.dart';

import '../../core/constants/app_assets.dart';
import '../../core/constants/app_color.dart';
import '../../core/constants/app_sizes.dart';
import '../../core/utils/screen_util.dart';
import 'dart:html' as html;

class WelcomePageDesktop extends StatelessWidget {
  const WelcomePageDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
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
                  onPressed: () {
                    context.read<ScrollProvider>().scrollToContact();
                  },
                  child: Text(
                    "CONTACT",
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
        ),
        Positioned(
          top: ScreenUtil().screenHeight * .25,
          left: 0,
          bottom: ScreenUtil().screenHeight * .25,
          child: buildSocialRef(),
        )
      ],
    );
  }

  Widget buildSocialRef() {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.black,
        boxShadow: const [
          BoxShadow(
            color: Colors.white,
            blurRadius: 5,
            spreadRadius: 0,
          ),
        ],
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(Sizes.s5.r),
          bottomRight: Radius.circular(Sizes.s5.r),
        ),
      ),
      padding: const EdgeInsets.all(Sizes.s5),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          socialLogo(
            icon: AppAssets.github,
            onTap: () {
              html.window.open(AppStrings.githubUrl, "_blank");
            },
          ),
          socialLogo(
            icon: AppAssets.linkedIn,
            onTap: () {
              html.window.open(AppStrings.linkedInUrl, "_blank");
            },
          ),
          socialLogo(
            icon: AppAssets.gmail,
            onTap: () {
              html.window.open(AppStrings.gmailUrl, "_blank");
            },
          ),
          socialLogo(
            icon: AppAssets.instagram,
            onTap: () {
              html.window.open(AppStrings.instagramUrl, "_blank");
            },
          ),
          socialLogo(
            icon: AppAssets.twitter,
            onTap: () {
              html.window.open(AppStrings.twitterUrl, "_blank");
            },
          ),
          socialLogo(
            icon: AppAssets.facebook,
            onTap: () {
              html.window.open(AppStrings.facebookUrl, "_blank");
            },
          ),
        ],
      ),
    );
  }
}

Widget socialLogo({
  required String icon,
  double? height,
  double? width,
  Color? color,
  required Function() onTap,
}) {
  return Container(
    margin: EdgeInsets.symmetric(
      vertical: Sizes.s10.h,
      horizontal: Sizes.s10.w,
    ),
    child: GestureDetector(
      onTap: onTap,
      child: SvgPicture.asset(
        icon,
        height: height ?? Sizes.s20.h,
        width: width ?? Sizes.s20.w,
        colorFilter: ColorFilter.mode(color ?? AppColors.white, BlendMode.srcIn),
      ),
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:flutter_widgets/flutter_widgets.dart';
import 'package:protfolio_web/core/constants/app_assets.dart';
import 'package:protfolio_web/core/constants/app_color.dart';
import 'package:protfolio_web/core/constants/app_sizes.dart';
import 'package:protfolio_web/core/constants/app_string.dart';
import 'package:protfolio_web/core/utils/screen_util.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'dart:html' as html;

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => mobileFooter(),
      desktop: (context) => desktopFooter(),
    );
  }

  Widget desktopFooter() {
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
          footerLogo(),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              socialLogo(
                icon: AppAssets.linkedIn,
                onTap: () {
                  html.window.open(AppStrings.linkedInUrl, "_blank");
                },
              ),
              socialLogo(
                icon: AppAssets.github,
                onTap: () {
                  html.window.open(AppStrings.githubUrl, "_blank");
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
          )
        ],
      ),
    );
  }

  Widget mobileFooter() {
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
          footerLogo(),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              socialLogo(
                icon: AppAssets.linkedIn,
                onTap: () {
                  html.window.open(AppStrings.linkedInUrl, "_blank");
                },
              ),
              socialLogo(
                icon: AppAssets.github,
                onTap: () {
                  html.window.open(AppStrings.githubUrl, "_blank");
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
          )
        ],
      ),
    );
  }

  Widget footerLogo() {
    return Image.network(
      "https://i.postimg.cc/nctDrMSw/Untitled-design-removebg-preview.png",
      height: Sizes.s55.h,
      width: Sizes.s55.w,
      filterQuality: FilterQuality.high,
    );
  }

  Widget socialLogo({
    required String icon,
    double? height,
    double? width,
    Color? color,
    required Function() onTap,
  }) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: Sizes.s10.w),
      child: GestureDetector(
        onTap: onTap,
        child: SvgPictureAsset(
          icon,
          height: height ?? Sizes.s20.h,
          width: width ?? Sizes.s20.w,
          color: color ?? AppColors.white,
        ),
      ),
    );
  }
}

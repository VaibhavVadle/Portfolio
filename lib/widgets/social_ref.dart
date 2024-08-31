import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../core/constants/app_assets.dart';
import '../core/constants/app_color.dart';
import '../core/constants/app_sizes.dart';
import '../core/constants/app_string.dart';
import 'dart:html' as html;

class SocialRef extends StatelessWidget {
  const SocialRef({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
    margin: EdgeInsets.symmetric(horizontal: Sizes.s10.w),
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

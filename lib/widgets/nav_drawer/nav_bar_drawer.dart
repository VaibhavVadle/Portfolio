import 'package:flutter/material.dart';
import '../../core/constants/app_color.dart';
import '../../core/constants/app_string.dart';
import '../../core/utils/screen_util.dart';
import '../../provider/scroll_provider.dart';
import '../custom_divider.dart';
import '../nav_button.dart';
import '../nav_logo.dart';
import '../social_ref.dart';
import 'package:provider/provider.dart';

import '../../core/constants/app_assets.dart';
import '../../core/constants/app_sizes.dart';
import 'dart:html' as html;

class NavBarDrawer extends StatelessWidget {
  const NavBarDrawer({
    super.key,
    required this.scaffoldKey,
  });
  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = TextStyle(
      fontSize: Sizes.s20.sp,
      letterSpacing: Sizes.s2.sp,
      fontWeight: FontWeight.normal,
      color: AppColors.white,
    );

    return Container(
      padding: EdgeInsets.only(
        left: Sizes.s40.w,
        right: Sizes.s40.w,
        top: Sizes.s17.h,
        bottom: Sizes.s80.h,
      ),
      color: AppColors.primary,
      width: ScreenUtil().screenWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const NavLogo(),
              GestureDetector(
                onTap: () {
                  scaffoldKey.currentState!.closeEndDrawer();
                },
                child: Image.asset(
                  AppAssets.close,
                  height: Sizes.s20.h,
                  width: Sizes.s20.w,
                  color: AppColors.white,
                ),
              ),
            ],
          ),
          SizedBox(height: Sizes.s10.h),
          buildDivider(),
          NavButton(
            text: "Home",
            onTap: () {
              scaffoldKey.currentState!.closeEndDrawer();
              context.read<ScrollProvider>().scrollToNavBar();
            },
            textStyle: textStyle,
          ),
          buildDivider(),
          NavButton(
            text: "About",
            onTap: () {
              scaffoldKey.currentState!.closeEndDrawer();
              context.read<ScrollProvider>().scrollToAboutMe();
            },
            textStyle: textStyle,
          ),
          buildDivider(),
          NavButton(
            text: "Resume",
            onTap: () {
              scaffoldKey.currentState!.closeEndDrawer();
              html.window.open(AppStrings.resumeUrl, "_blank");
            },
            textStyle: textStyle,
          ),
          buildDivider(),
          // NavButton(
          //   text: "Project",
          //   textStyle: textStyle,
          // ),
          // buildDivider(),
          NavButton(
            text: "Contact",
            onTap: () {
              scaffoldKey.currentState!.closeEndDrawer();
              context.read<ScrollProvider>().scrollToContact();
            },
            textStyle: textStyle,
          ),
          buildDivider(),
          const Spacer(),
          const SocialRef(),
        ],
      ),
    );
  }

  CustomDivider buildDivider() {
    return CustomDivider(
      margin: EdgeInsets.symmetric(vertical: Sizes.s28.h),
    );
  }
}

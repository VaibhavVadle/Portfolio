import 'package:flutter/material.dart';
import 'package:protfolio_web/core/constants/app_color.dart';
import 'package:protfolio_web/core/constants/app_sizes.dart';
import 'package:protfolio_web/core/constants/app_string.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'dart:html' as html;

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) {
        return mobileNavBar();
      },
      desktop: (context) {
        return desktopNavBar();
      },
    );
  }

  Widget mobileNavBar() {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: Sizes.s40.w,
      ),
      height: Sizes.s70.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(
            Icons.menu,
            color: AppColors.white,
          ),
          navLogo(),
        ],
      ),
    );
  }

  Widget desktopNavBar() {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: Sizes.s50.w,
        vertical: Sizes.s5.h,
      ),
      height: Sizes.s70.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          navLogo(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              navButton("HOME"),
              navButton("ABOUT"),
              navButton(
                "RESUME",
                onTap: () {
                  html.window.open(AppStrings.resumeUrl, "_blank");
                },
              ),
              navButton("PROJECTS"),
              navButton("CONTACT"),
            ],
          )
        ],
      ),
    );
  }

  Widget navButton(String text, {Function()? onTap}) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: Sizes.s15.w,
      ),
      child: TextButton(
        onPressed: onTap ?? () {},
        child: Text(
          text,
          style: TextStyle(
            fontSize: Sizes.s16.sp,
            letterSpacing: Sizes.s2.sp,
            color: AppColors.white,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    );
  }

  Widget navLogo() {
    return Image.network(
      "https://i.postimg.cc/nctDrMSw/Untitled-design-removebg-preview.png",
      height: Sizes.s45.h,
      width: Sizes.s45.w,
      filterQuality: FilterQuality.high,
    );
  }
}

import 'package:flutter/material.dart';
import '../../core/constants/app_sizes.dart';
import '../../core/constants/app_string.dart';
import '../../provider/scroll_provider.dart';
import '../../widgets/nav_button.dart';
import '../../widgets/nav_logo.dart';
import 'dart:html' as html;

import 'package:provider/provider.dart';

class NavBarDesktop extends StatelessWidget {
  const NavBarDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: Sizes.s50.w,
        vertical: Sizes.s5.h,
      ),
      height: Sizes.s70.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const NavLogo(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              NavButton(
                text: "HOME",
                onTap: () {
                  context.read<ScrollProvider>().scrollToWelcomePage();
                },
              ),
              NavButton(
                text: "ABOUT",
                onTap: () {
                  context.read<ScrollProvider>().scrollToAboutMe();
                },
              ),
              NavButton(
                text: "RESUME",
                onTap: () {
                  html.window.open(AppStrings.resumeUrl, "_blank");
                },
              ),
              // const NavButton(text: "PROJECTS"),
              NavButton(
                text: "CONTACT",
                onTap: () {
                  context.read<ScrollProvider>().scrollToContact();
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}

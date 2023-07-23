import 'package:flutter/material.dart';
import '../../core/constants/app_assets.dart';
import '../../core/constants/app_color.dart';
import '../../core/constants/app_sizes.dart';
import '../../widgets/nav_logo.dart';

class NavBarMobile extends StatelessWidget {
  const NavBarMobile({
    super.key,
    required this.scaffoldKey,
  });

  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: Sizes.s40.w,
      ),
      height: Sizes.s70.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const NavLogo(),
          GestureDetector(
            onTap: () {
              scaffoldKey.currentState!.openEndDrawer();
            },
            child: Image.asset(
              AppAssets.menu,
              height: Sizes.s40.h,
              width: Sizes.s40.w,
              color: AppColors.white,
            ),
          ),
        ],
      ),
    );
  }
}

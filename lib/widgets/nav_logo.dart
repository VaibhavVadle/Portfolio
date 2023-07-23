import 'package:flutter/material.dart';
import '../core/constants/app_sizes.dart';

class NavLogo extends StatelessWidget {
  const NavLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.network(
      "https://i.postimg.cc/nctDrMSw/Untitled-design-removebg-preview.png",
      height: Sizes.s45.h,
      width: Sizes.s45.w,
      filterQuality: FilterQuality.high,
    );
  }
}

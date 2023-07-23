import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../core/constants/app_sizes.dart';
import '../provider/scroll_provider.dart';

class FooterLogo extends StatelessWidget {
  const FooterLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<ScrollProvider>().scrollToNavBar();
      },
      child: Image.network(
        "https://i.postimg.cc/nctDrMSw/Untitled-design-removebg-preview.png",
        height: Sizes.s55.h,
        width: Sizes.s55.w,
        filterQuality: FilterQuality.high,
      ),
    );
  }
}

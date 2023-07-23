import 'package:flutter/material.dart';
import 'nav_bar_desktop.dart';
import 'nav_bar_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavBar extends StatelessWidget {
  const NavBar({
    super.key,
    required this.scaffoldKey,
  });

  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) {
        return NavBarMobile(
          scaffoldKey: scaffoldKey,
        );
      },
      desktop: (context) {
        return const NavBarDesktop();
      },
    );
  }
}

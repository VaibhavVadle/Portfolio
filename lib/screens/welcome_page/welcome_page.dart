import 'package:flutter/material.dart';
import 'welcome_page_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'welcome_page_desktop.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (context) => const WelcomePageDesktop(),
      mobile: (context) => const WelcomePageMobile(),
    );
  }
}

import 'package:flutter/material.dart';
import 'about_me_desktop.dart';
import 'about_me_mobile.dart';

import 'package:responsive_builder/responsive_builder.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({super.key});

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => const AboutMeMobile(),
      desktop: (context) => const AboutMeDesktop(),
    );
  }
}

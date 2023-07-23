import 'package:flutter/material.dart';
import 'footer_desktop.dart';
import 'footer_mobile.dart';

import 'package:responsive_builder/responsive_builder.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => const FooterMobile(),
      desktop: (context) => const FooterDesktop(),
    );
  }
}

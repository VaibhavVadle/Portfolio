import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'contact_desktop.dart';
import 'contact_mobile.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (context) => const ContactDesktop(),
      mobile: (context) => const ContactMobile(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:protfolio_web/core/constants/app_color.dart';
import 'package:protfolio_web/screens/containers/container1.dart';
import 'package:protfolio_web/screens/containers/container2.dart';
import 'package:protfolio_web/screens/containers/container3.dart';
import 'package:protfolio_web/screens/footer.dart';
import 'package:protfolio_web/screens/nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            NavBar(),
            Container1(),
            Container2(),
            Container3(),
            Footer(),
          ],
        ),
      ),
    );
  }
}

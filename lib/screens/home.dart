import 'package:flutter/material.dart';
import '../core/constants/app_color.dart';
import '../provider/scroll_provider.dart';
import 'about_me/about_me.dart';
import 'contact/contact.dart';
import 'footer/footer.dart';
import 'nav_bar/nav_bar.dart';
import 'welcome_page/welcome_page.dart';
import '../widgets/nav_drawer/nav_bar_drawer.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizeInfo) {
      return Scaffold(
        key: _scaffoldKey,
        endDrawer: sizeInfo.deviceScreenType == DeviceScreenType.mobile ||
                sizeInfo.deviceScreenType == DeviceScreenType.tablet
            ? NavBarDrawer(
                scaffoldKey: _scaffoldKey,
              )
            : null,
        backgroundColor: AppColors.black,
        body: Consumer<ScrollProvider>(builder: (context, provider, child) {
          return SingleChildScrollView(
            controller: provider.scrollController,
            child: Column(
              children: [
                NavBar(
                  scaffoldKey: _scaffoldKey,
                  key: provider.navBarKey,
                ),
                WelcomePage(key: provider.welcomeKey),
                AboutMe(key: provider.aboutMeKey),
                Contact(key: provider.contactKey),
                Footer(key: provider.footerKey),
              ],
            ),
          );
        }),
      );
    });
  }
}

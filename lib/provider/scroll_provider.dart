import 'package:flutter/material.dart';

class ScrollProvider extends ChangeNotifier {
  final ScrollController _scrollController = ScrollController();
  ScrollController get scrollController => _scrollController;

  final GlobalKey _welcomeKey = GlobalKey();
  GlobalKey get welcomeKey => _welcomeKey;
  final GlobalKey _aboutMeKey = GlobalKey();
  GlobalKey get aboutMeKey => _aboutMeKey;
  final GlobalKey _contactKey = GlobalKey();
  GlobalKey get contactKey => _contactKey;
  final GlobalKey _footerKey = GlobalKey();
  GlobalKey get footerKey => _footerKey;
  final GlobalKey _navBarKey = GlobalKey();
  GlobalKey get navBarKey => _navBarKey;

  void scrollToWelcomePage() {
    final RenderBox renderBox =
        _welcomeKey.currentContext!.findRenderObject() as RenderBox;
    final offset = renderBox.localToGlobal(Offset.zero).dy;
    _scrollController.animateTo(
      offset,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  void scrollToAboutMe() {
    final RenderBox renderBox =
        _aboutMeKey.currentContext!.findRenderObject() as RenderBox;
    final offset = renderBox.localToGlobal(Offset.zero).dy;
    _scrollController.animateTo(
      offset,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  void scrollToContact() {
    final RenderBox renderBox =
        _contactKey.currentContext!.findRenderObject() as RenderBox;
    final offset = renderBox.localToGlobal(Offset.zero).dy;
    _scrollController.animateTo(
      offset,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  void scrollToFooter() {
    final RenderBox renderBox =
        _footerKey.currentContext!.findRenderObject() as RenderBox;
    final offset = renderBox.localToGlobal(Offset.zero).dy;
    _scrollController.animateTo(
      offset,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  void scrollToNavBar() {
    final RenderBox renderBox =
        _navBarKey.currentContext!.findRenderObject() as RenderBox;
    final offset = renderBox.localToGlobal(Offset.zero).dy;
    _scrollController.animateTo(
      offset,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}

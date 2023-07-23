import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'provider/contact_provider.dart';
import 'provider/scroll_provider.dart';
import 'screens/home.dart';
import 'widgets/widgets.dart';
import 'package:provider/provider.dart';

import 'core/constants/app_color.dart';
import 'core/constants/app_sizes.dart';
import 'core/utils/screen_util.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
    apiKey: "AIzaSyCuKW7Ls6RaP2G8rgFo6FzjsJC-taCjg0M",
    appId: "1:516432246693:web:300537906d6ec39ac55a4c",
    messagingSenderId: "516432246693",
    projectId: "vaibhav-vadle",
  ));
  runApp(const MyApp());
  ErrorWidget.builder = (details) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(Sizes.s20),
        child: ErrorText(details.exception.toString()),
      ),
    );
  };
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.light,
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ScrollProvider()),
        ChangeNotifierProvider(create: (context) => ContactProvider()),
      ],
      child: MaterialApp(
        title: "Vaibhav Vadle | Flutter Developer",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'RobotoMono',
          brightness: Brightness.light,
          primaryColor: AppColors.primary,
          useMaterial3: true,
        ),
        home: const HomeScreen(),
        builder: (context, child) {
          return ScrollConfiguration(
            behavior: const _ScrollBehaviorModified(),
            child: LayoutBuilder(
              builder: (context, constraints) {
                ScreenUtil.init(
                  context,
                  designSize: Size(constraints.maxWidth, constraints.maxHeight),
                );
                return child ?? const SizedBox.shrink();
              },
            ),
          );
        },
      ),
    );
  }
}

class _ScrollBehaviorModified extends ScrollBehavior {
  const _ScrollBehaviorModified();

  @override
  ScrollPhysics getScrollPhysics(BuildContext context) {
    switch (getPlatform(context)) {
      case TargetPlatform.iOS:
      case TargetPlatform.macOS:
      case TargetPlatform.android:
      case TargetPlatform.fuchsia:
      case TargetPlatform.linux:
      case TargetPlatform.windows:
        return const ClampingScrollPhysics();
    }
  }
}

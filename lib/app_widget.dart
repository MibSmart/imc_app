import 'package:flutter/material.dart';

import 'app/view/splash_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/Splash",
      routes: {
        "/splash": (context) => const SplashPage(),
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:imc_app/app/model/input_page.dart';
import 'package:imc_app/app/model/results_page.dart';
import 'package:imc_app/app_widget.dart';
import 'package:imc_app/calculator_brain.dart';

import 'splash_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    int height = 180;
    int weight = 60;

    CalculatorBrain calc = CalculatorBrain(weight: weight, height: height);

    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.grey[350],
      ),
      debugShowCheckedModeBanner: false,
      //home: InputPage(),

      initialRoute: "/appWidget",
      routes: {
        "/splash": (context) => const SplashPage(),
        "/inputPage": (context) => const InputPage(),
        "/appWidget": (context) => const AppWidget(),
      },
    );
  }
}

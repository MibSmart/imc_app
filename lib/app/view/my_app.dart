import 'package:flutter/material.dart';
import 'package:imc_app/app/model/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.grey[350],
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

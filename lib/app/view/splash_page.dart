import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      Duration(seconds: 3),
    ).then((value) {
      CircularProgressIndicator();
      Navigator.pushNamed(context, "/homePage");
    });

    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Image.asset("images/logo2.0.png"),
    );
  }
}

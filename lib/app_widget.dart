import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:imc_app/app/model/home_page.dart';
import 'package:imc_app/app/model/input_page.dart';
import 'app/model/constants.dart';
import 'app/view/splash_page.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  Future<void> hideScreen() async {
    await Future.delayed(Duration(seconds: 3), () async {
      Navigator.pushNamed(context, "/inputPage");
     InputPage();
      // Get.offAll(MainButtonNavigatorBar()
      // );
    });
  }

  bool hided = false;

  @override
  void didChangeDependencies() {
    if (!hided) {
      hideScreen();
      hided = true;
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: 650.0,
        child: TextLiquidFill(
          text: 'I M C',
          waveColor: Colors.blueAccent,
          boxBackgroundColor: Colors.white,
          textStyle: TextStyle(
            fontSize: 80.0,
            fontWeight: FontWeight.bold,
          ),
          loadDuration: Duration(seconds: 2),
          waveDuration: Duration(seconds: 2),
          boxHeight: MediaQuery.of(context).size.height,
          boxWidth: MediaQuery.of(context).size.width,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:imc_app/app/model/constants.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Info Sobre App",
          style: kTitleTextStyle,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => InfoPage()),
                  );
                });
              },
              child: Icon(
                Icons.info_outlined,
                size: 30,
              ),
            ),
          ),
        ],
        backgroundColor: kAppBackgroundColor,
      ),
      body: Center(
        child: Container(
          width: 340,
          height: 280,
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.05),
              borderRadius: BorderRadius.circular(50)),
          child: Column(
            children: [
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 75),
                    child: Text(
                      'IMC Calculator',
                      style: kInfoTextTitle,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              SizedBox(
                width: 320,
                height: 220,
                child: const Text(
                    "Eu fiz uma calculadora de índice de massa corporal inspirada nos belos designs feitos por Ruben Vaalt. É um aplicativo para várias telas com funcionalidade simples, mas com um estilo totalmente personalizado.",
                    style: kInfoPageMainText,
                    textAlign: TextAlign.center),
              )
            ],
          ),
        ),
      ),
    );
  }
}

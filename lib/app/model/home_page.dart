// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:imc_app/app/model/input_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cálculo de IMC"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 60),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InputTexts(
                label: "Altura",
                hint: "Digite sua altura",
              ),
              SizedBox(
                height: 30,
              ),
              InputTexts(
                label: "Peso",
                hint: "Digite seu Peso",
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  'Você está fora de forma!',
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: ElevatedButton(
                  onPressed: () {
                    print('Pressed');
                    Navigator.pushNamed(context, "/appWidget");
                  },
                  child: Text('Calcular'),
                  style: ElevatedButton.styleFrom(
                      shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(20.0),
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

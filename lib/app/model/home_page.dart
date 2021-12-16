// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:imc_app/app/model/custom_wigtes.dart';
import 'package:imc_app/app/model/data.dart';
import 'custom_wigtes.dart';

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
    int totalPages = OnboardingItems.loadOnboardingItem().length;
    return Scaffold(
      body: PageView.builder(
          itemCount: totalPages, //contador de pages
          itemBuilder: (BuildContext context, int index) {
            OnboardingItem oi = OnboardingItems.loadOnboardingItem()[index];
            return Container(
              // esse container chama as paginas com suas configurações

              height: MediaQuery.of(context)
                  .size
                  .height, // adequando as dimenões de cada deispositivo dinamicamente
              width: MediaQuery.of(context).size.width,
              color: oi
                  .color, // aqui chama a cor de cada pagina criada no data.dart
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        TextButton(
                          onPressed: null,
                          child: Text(
                            'Skip',
                            style: Theme.of(context).textTheme.headline5,
                          ),
                        ),
                      ],
                    ),
                    HeroImage(
                        img: oi.image, // aqui chama  a imgem
                        imgHeigth: MediaQuery.of(context).size.height * 0.3),
                    Column(
                      children: <Widget>[
                        Text(
                          oi.title,
                          style: Theme.of(context).textTheme.headline1,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          oi.subtitle,
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        index == (totalPages - 1)
                            ? CustomButton(
                                btnText: 'Get Started',
                                btnFN: () {},
                              )
                            : Container()
                      ],
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 10,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: totalPages,
                          itemBuilder: (BuildContext context, int i) {
                            return Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Container(
                                    width: index == i ? 40 : 20,
                                    color: index == i
                                        ? Colors.white70
                                        : Colors.white30));
                          }),
                    )
                  ]),
            );
          }),
    );
  }
}

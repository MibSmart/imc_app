// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            
           decoration: BoxDecoration(
              gradient: RadialGradient(
                center: Alignment(-0.5,-0.7),
                radius: 0.15,
                // ignore: prefer_const_literals_to_create_immutables
                colors: <Color>[
                  Color(0xFFEEEEEE),
                  Color(0xFF111133),
                ],
                stops:<double>[0.9,1.0],
                 ),
            ),
            
          )
        ],
      ),
    );
  }
}

 
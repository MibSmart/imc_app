// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

const kBottomContainerHeight = 80.0;
const kActiveCardColor = Color(0xFF1D1e33);
const kInactiveCardcolor = Color(0xFF111328);
const kBottomContainerColor = Color(0xFFEB1555);

final kHintTextStyle = TextStyle(
  color: Colors.grey[600],
  fontFamily: 'OpenSans',
);

final kLabelStyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
  fontFamily: 'OpenSans',
);

final kBoxDecorationStyle = BoxDecoration(
  color: Color(0xFF6CA8F1),
  borderRadius: BorderRadius.circular(10.0),
  // ignore: prefer_const_literals_to_create_immutables
  boxShadow: [
    BoxShadow(
      color: Colors.black12,
      blurRadius: 6.0,
      offset: Offset(0, 2),
    ),
  ],
);

const TextStyle kMainStyle = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 40.0,
    textBaseline: TextBaseline.alphabetic);
const TextStyle kFirstRowStyle = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 20.0,
    textBaseline: TextBaseline.alphabetic);

const TextStyle kSecStyle = TextStyle(
    color: Colors.white54, fontWeight: FontWeight.w400, fontSize: 15.0);
const Color activeColor = Color(0xFF3949AB);
const Color inactiveColor = Color(0xFF1d1f33);
Color kMainColor = Color(0xFF000033);

const kLabelTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
);

const kNumberTextStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.w900,
);

const kLargeButtonTextSty = TextStyle(
  fontSize: 25.0,
  fontWeight: FontWeight.bold,
);

const kTitleTextStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.bold,
);

const kresultsTextStyle = TextStyle(
  color: Color(0xFF24D876),
  fontSize: 22.0,
  fontWeight: FontWeight.bold,
);

const kBMItextStyle = TextStyle(
  fontSize: 100.0,
  fontWeight: FontWeight.bold,
);

const kBodyTextStyle = TextStyle(
  fontSize: 22.0,
);

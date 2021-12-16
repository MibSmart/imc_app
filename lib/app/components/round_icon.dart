import 'package:flutter/material.dart';

class RoundIcon extends StatelessWidget {
  final IconData iconRound;
  final Function onPressed;

  const RoundIcon({Key? key, required this.iconRound, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed(),
      child: Icon(iconRound),
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}

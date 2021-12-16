import 'package:flutter/material.dart';

class RoundIcon extends StatelessWidget {
  final IconData iconRound;
  final VoidCallback onPressed;

  const RoundIcon({Key? key, required this.iconRound, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(
        iconRound,
        color: Colors.white,
      ),
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Colors.blue,
      onPressed: onPressed,
    );
  }
}

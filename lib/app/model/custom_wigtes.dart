import 'package:flutter/material.dart';


class HeroImage extends StatelessWidget {
  

  final String img;
  final double imgHeigth;
  HeroImage({required this.img,required this.imgHeigth});

  @override
  Widget build(BuildContext context) {
    return Container(

      height: imgHeigth,
      child: Image.asset(img)
      
    );
  }
}
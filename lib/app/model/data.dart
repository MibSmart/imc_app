// ignore_for_file: unused_import, empty_constructor_bodies

import 'dart:math';

import 'package:flutter/material.dart';
//classe e construtor para descrição e conteudo das paginas 
class OnboardingItem{
  final String title;
  final String subtitle;
  final String image;
  final Color color;

  const OnboardingItem({
    required this.title,
    required this.subtitle,
    required this.image,
    required this.color,
  
});
}



///paginas onboardig criadas 
class OnboardingItems{
  static List<OnboardingItem> loadOnboardingItem(){
    const fi = <OnboardingItem>[
      

       OnboardingItem(
        title: "Super Magro",
        subtitle: "não contém carne nem gordura",
        image: "images/M1.png",
        color: Colors.blue
        
        
      ),
      
      OnboardingItem(
        title: "Em Forma ",
        subtitle: "Formas belíssimas.",
        image: "images/N1.png",
        color: Colors.blue
      ),
      
      OnboardingItem(
        title: "Gordinho(a)",
        subtitle: "Quantidade de gordura acima da usual",
        image: "images/G1.png",
        color: Colors.blue
      ),
      
    ];
    return fi;
  }
}
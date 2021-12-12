// ignore_for_file: unused_import, empty_constructor_bodies

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

class OnboardingItems{
  static List<OnboardingItem> loadOnboardingItem(){
    const fi = <OnboardingItem>[
      //paginas onboardig criadas 
      OnboardingItem(
        title: "Super Magro",
        subtitle: "não contém carne nem gordura",
        image: "images/slin.jpg",
        color: Colors.green
      ),
      OnboardingItem(
        title: "Em Forma ",
        subtitle: "Formas belíssimas.",
        image: "images/fitness.png",
        color: Colors.red
      ),
      OnboardingItem(
        title: "Gordinho(a)",
        subtitle: "Quantidade de gordura acima da usual",
        image: "images/fat.png",
        color: Colors.blue
      ),
      
    ];
    return fi;
  }
}
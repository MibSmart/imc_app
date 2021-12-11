// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:imc_app/app/model/custom_wigtes.dart';
import 'package:imc_app/app/model/data.dart';
import 'custom_wigtes.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int totalPages = OnboardingItems.loadOnboardingItem().length;
    return Scaffold(
    body: PageView.builder(
      itemCount: totalPages,
      itemBuilder: (BuildContext context,int index){
        OnboardingItem oi = OnboardingItems.loadOnboardingItem()[index];
        return Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: oi.color,
          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children:<Widget>[
             TextButton(onPressed: null,child: Text('Skip',style: Theme.of(context).textTheme.headline5,),),
             
                ],
              ),
              HeroImage(
                img: oi.image,
                imgHeigth:  MediaQuery.of(context).size.height*0.3),
  
              Column(
                  children:<Widget> [
                  Text(oi.title,style:Theme.of(context).textTheme.headline1,),
                  SizedBox(height: 20,),
                  Text(oi.subtitle,style: Theme.of(context).textTheme.bodyText1,)
                ],
              ),


               Container(
                 width: MediaQuery.of(context).size.width,
                 height: 10,
                 child: ListView.builder(
                   scrollDirection: Axis.horizontal,
                   itemCount: totalPages,
                   itemBuilder: (BuildContext context,int i){
                      return Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Container(
                          
                          width: index==i ?40 : 20,
                          
                          color: Colors.white70)
                          );
                   }),
               )
          ]),
        );
      }),
    );
  }
}

 
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

class CustomButton extends StatelessWidget {
  
  final String btnText;
  final VoidCallback  btnFN;
  

 
  CustomButton({required this.btnText, required this.btnFN});
  @override
  Widget build(BuildContext context) {
    
    return MaterialButton(
                          onPressed:  btnFN,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                btnText,
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                              SizedBox(width:10,),
                              Icon(Icons.arrow_forward,
                                color: Colors.white,
                              )
                            ],
                          ),
                        );
  }
}
import 'package:flutter/material.dart';
import 'package:gdg_6_october/Presentation/style/Image.dart';
import 'package:gdg_6_october/Presentation/style/size/Container.dart';
import 'package:gdg_6_october/Presentation/style/size/padding.dart';
Widget logo(height,width,text,number){
  return Padding(
    padding:EdgeInsets.only(
      top:(PaddingApp.welcomeText*height)/number,
      bottom: (PaddingApp.welcomeText*height)/number,
    ),
    child: Column(
      children: [
        Image.asset(ImageApp.logoImage,
          height: Height.logo*height,
          width: Width.logo*width,),
        Padding(
          padding:EdgeInsets.only(top:10.0*number),
          child: Text(text,style:const TextStyle(
            fontSize: 24,
            fontWeight:FontWeight.bold,
          )),
        ),
      ],
    ),
  );

}
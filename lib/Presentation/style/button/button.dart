import 'package:flutter/material.dart';
import 'package:gdg_6_october/Presentation/style/ColorManger/ColorManger.dart';
import 'package:gdg_6_october/Presentation/style/size/Container.dart';
import 'package:gdg_6_october/Presentation/style/size/padding.dart';
Widget authButton(height,width,text){
  return Padding(
    padding:  EdgeInsets.only(top:PaddingApp.welcomeButton*height),
    child: Container(
      height:Height.bigButton*height,
      width:Width.bigButton*width,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: ColorManager.prime,
        borderRadius: BorderRadius.circular((height*Height.bigButton)/8)
      ),
      child: Text(text,style:const TextStyle(
        color: ColorManager.secondColor,
      ),),
    ),
  );
}
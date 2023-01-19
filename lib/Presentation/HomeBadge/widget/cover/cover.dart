import 'package:flutter/material.dart';
import 'package:gdg_6_october/Presentation/style/ColorManger/ColorManger.dart';
import 'package:gdg_6_october/Presentation/style/size/Container.dart';
Widget cover(height,color,image,text){
  return Stack(
    children: [
      Container(
        height: Height.cover*height,
        width:double.infinity,
        decoration: BoxDecoration(
            image:DecorationImage(
              image: AssetImage(image,),
              fit: BoxFit.cover,
            ),
        ),
      ),
      Container(
        height: Height.cover*height,
        width: double.infinity,
        decoration: BoxDecoration(
            color:color,
        ),
        alignment: Alignment.center,
        child: Text(text,style: TextStyle(
          color: ColorManager.secondColor.withOpacity(.6),
          fontSize: 30,
          fontWeight: FontWeight.bold,
        )),
      ),

    ],
  );

}
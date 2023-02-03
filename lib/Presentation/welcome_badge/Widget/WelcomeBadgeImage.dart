import 'package:flutter/material.dart';
import 'package:gdg_6_october/Presentation/style/Image.dart';
Widget backGround(height){
  return  Container(
    width: double.infinity,
    height: height,
    decoration: BoxDecoration(
      image: DecorationImage(
          image: AssetImage(ImageApp.welcomeImage),
        fit: BoxFit.cover,
      ),
    ),
  );

}
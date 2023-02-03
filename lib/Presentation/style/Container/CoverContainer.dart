import 'package:flutter/material.dart';
import 'package:gdg_6_october/Presentation/style/size/Container.dart';
Widget coverContainer(height,width,image,border){
  return Container(
    height:Height.cover*height,
    width: double.infinity,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: NetworkImage(image),
        fit: BoxFit.cover,
      ),
      borderRadius: BorderRadius.circular(height/border),
    ),
  );
}
import 'package:flutter/material.dart';

Widget text(text){
  return  Padding(
    padding:const EdgeInsets.only(left: 8.0,bottom: 30,top: 30),
    child: Align(
      alignment: Alignment.centerLeft,
      child: Text(text,style:const TextStyle(
        fontSize: 24,
      )),
    ),
  );
}
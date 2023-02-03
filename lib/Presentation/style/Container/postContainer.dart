import 'package:flutter/material.dart';
Widget postContainer(height,width,image,border){
  return Container(
    height:height,
    width: width,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: NetworkImage(image),
          fit: BoxFit.cover,
      ),
      borderRadius: BorderRadius.circular(height/border),
    ),
  );
}
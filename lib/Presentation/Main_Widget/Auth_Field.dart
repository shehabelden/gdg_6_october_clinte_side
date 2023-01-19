import 'package:flutter/material.dart';
import 'package:gdg_6_october/Presentation/style/size/padding.dart';
import 'package:gdg_6_october/Presentation/style/text_field/TextFieldAuth.dart';

Widget authField(length,width,height,List label,controller){
  return  ListView.builder(
      shrinkWrap: true,
      itemCount: label.length,
      itemBuilder: (c,i){
        return Padding(
          padding:  EdgeInsets.only(
            left: PaddingApp.loginTextFieldWidth*width,
            right: PaddingApp.loginTextFieldWidth*width,
            bottom:(PaddingApp.loginTextFieldWidth*width)*1.2,
          ),
          child: textFieldAuth(
            label[i],
            controller[i],
            height,
          ),
        );
      }
  );
}
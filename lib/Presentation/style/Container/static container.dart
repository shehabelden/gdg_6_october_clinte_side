import 'package:flutter/cupertino.dart';
import 'package:gdg_6_october/Presentation/style/ColorManger/ColorManger.dart';
import 'package:gdg_6_october/Presentation/style/size/Container.dart';
Widget staticContainer(height,width,color,image,text){
  return Stack(
    children: [
      Container(
        height: Height.small*height,
        width: Width.small*width,
        decoration: BoxDecoration(
          image:DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
            borderRadius: BorderRadius.circular((Height.small*height)/4)
        ),
      ),
      Container(
        height: Height.small*height,
        width: Width.small*width,
        decoration: BoxDecoration(
            color:color,
            borderRadius: BorderRadius.circular((Height.small*height)/4)
        ),
      ),
      SizedBox(
        height: Height.small*height,
        width: Width.small*width,
        child: Align(
          alignment: Alignment.center,
          child: Text(text,style: TextStyle(
            fontSize: 18,
            color: ColorManager.secondColor.withOpacity(0.7),
          ),
          ),
        ),
      ),

    ],
  );
}
import 'package:flutter/material.dart';
import 'package:gdg_6_october/Presentation/style/Container/postContainer.dart';

Widget listView(height,width,List image){
  return Align(
    alignment: Alignment.centerLeft,
    child: Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: SizedBox(
        width:width,
        child: ListView.builder(
          shrinkWrap: true,
          physics:const NeverScrollableScrollPhysics(),
          itemCount: image.length,
          itemBuilder: (c,i){
            return Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: postContainer(
                  height,
                  width,
                  image[i]["image"],
                  8
              ),
            );
          },
        ),
      ),
    ),
  );

}
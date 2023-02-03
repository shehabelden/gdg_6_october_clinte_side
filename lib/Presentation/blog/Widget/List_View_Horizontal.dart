import 'package:flutter/material.dart';
import 'package:gdg_6_october/Presentation/blog/badgs/MainBlog.dart';
import 'package:gdg_6_october/Presentation/style/Container/postContainer.dart';

Widget listViewHorizontal(width,height,List image,context){
  return Align(
    alignment: Alignment.centerLeft,
    child: SizedBox(
      height:height,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: image.length,
        itemBuilder: (c,i){
          return Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: InkWell(
              onTap: ()async{
                await Navigator.of(context).push(
                    MaterialPageRoute(
                    builder: (context) => MaiBlogBadge(id:image[i]["id" ].toString()
                    ),),
                );
              },
              child: postContainer(
                  height,
                  width,
                  image[i]["image"],
                  8
              ),
            ),
          );
        },
      ),
    ),
  );

}
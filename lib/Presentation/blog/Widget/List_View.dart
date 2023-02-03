import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gdg_6_october/Presentation/blog/cubt/cubt/cubt.dart';
import 'package:gdg_6_october/Presentation/blog/cubt/state/state.dart';
import 'package:gdg_6_october/Presentation/style/Container/postContainer.dart';
import 'package:gdg_6_october/models/saved/savedmodel.dart';
import 'package:url_launcher/url_launcher.dart';
Widget listView(height,width,image,BuildContext context){
  var cubt=BlogApiCubt.get(context);
      return Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: SizedBox(
          width:width*2,
          child: ListView.builder(
            shrinkWrap: true,
            physics:const NeverScrollableScrollPhysics(),
            itemCount: image.length,
            itemBuilder: (c,i){
              SavedModel data= SavedModel(
                  name: image[i]["title"].toString(),
                  image: image[i]["image"].toString(),
                  gender: "man",
                  link: "Blogs/AllBlog/${image[i]["topic"]}",
              );
              return Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: Row(
                  children: [
                    InkWell(
                      onTap: ()async{
                        final Uri _url = Uri.parse(image[i]["topic"]);
                        await launchUrl(_url);
                      },
                      child: postContainer(
                          height,
                          width,
                          image[i]["image"],
                          8,
                      ),
                    ),
                    SizedBox(
                      height: height-10,
                      width: 80,
                      child: Text("  ${image[i]["title"]}"),
                    ),
                    Container(
                      height:height,
                      width:width-80,
                      alignment: Alignment.topRight,
                      child: PopupMenuButton(itemBuilder: (context)=>[
                        PopupMenuItem(child:Row(
                          children: const[
                            Text("save")
                          ],
                        ),
                          onTap: (){
                            cubt.manuFanc(data);
                          },
                        ),
                      ],
                        child:const Icon(Icons.more_vert),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      );
}
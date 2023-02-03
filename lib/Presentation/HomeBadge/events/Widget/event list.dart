import 'package:flutter/material.dart';
import 'package:gdg_6_october/Presentation/style/Container/postContainer.dart';

Widget eventListView(height,width,List image){
  return Align(
    alignment: Alignment.topLeft,
    child: Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: SizedBox(
        width:width *3,
        child: ListView.builder(
          shrinkWrap: true,
          physics:const NeverScrollableScrollPhysics(),
          itemCount: image.length,
          itemBuilder: (c,i){
            return Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: Row(
                children: [
                  postContainer(
                      height,
                      width,
                      image[i]["image"],
                      8
                  ),
                  SizedBox(
                    height: height,
                    width: width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top:15.0,left: 10.0),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text(image[i]["name"]),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(
                              bottom: 16.0,
                              left: 10,
                            ),
                            child: Text(image[i]["date"],),
                          ),
                        )
                      ],
                    ),
                  ),
                  const Align(
                      alignment: Alignment.topRight,
                      child: Icon(Icons.linear_scale_outlined,color: Colors.black)
                  ),

                ],
              ),
            );
          },
        ),
      ),
    ),
  );

}
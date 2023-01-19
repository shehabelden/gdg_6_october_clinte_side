import 'package:draggable_home/draggable_home.dart';
import 'package:flutter/material.dart';
import 'package:gdg_6_october/Presentation/HomeBadge/widget/cover/cover.dart';
import 'package:gdg_6_october/Presentation/style/ColorManger/ColorManger.dart';
import 'package:gdg_6_october/Presentation/style/Image.dart';
import 'package:gdg_6_october/Presentation/style/text/StaticText.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
List iconList=const[
  Icon(FontAwesomeIcons.facebook,),
  Icon(FontAwesomeIcons.instagram,),
  Icon(FontAwesomeIcons.linkedin,),
  Icon(FontAwesomeIcons.youtube,),

];
List textList=const[
  "facebook",
  "instagram",
  "linkedin",
  "youtube",

];
class SocialMedia extends StatelessWidget {
  const SocialMedia({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DraggableHome(
        title:const Text("social media"),
        backgroundColor: Colors.white,
        headerWidget: cover(
          MediaQuery.of(context).size.height*1.6,
          ColorManager.socialMediaCover.withOpacity(.3),
          ImageApp.socialmedia,
          StaticText.socialMedia
        ),
        body: [
          ListView.builder(
              itemCount: 4,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (c,i){
                return Padding(
                   padding: const EdgeInsets.only(bottom: 40,left: 40),
                    child: InkWell(
                      onTap:(){},
                      child: Row(
                       children: [
                         SizedBox(
                           child:iconList[i],
                           height: 80,
                         ),
                         Text("       ${textList[i]}"),
                ],
              ),
                    ),
            );
          }),
        ]
    );
  }
}

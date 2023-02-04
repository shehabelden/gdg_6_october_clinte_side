import'package:draggable_home/draggable_home.dart';
import 'package:flutter/material.dart';
import 'package:gdg_6_october/Presentation/HomeBadge/widget/cover/cover.dart';
import 'package:gdg_6_october/Presentation/style/ColorManger/ColorManger.dart';
import 'package:gdg_6_october/Presentation/style/Image.dart';
import 'package:gdg_6_october/Presentation/style/text/StaticText.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
List iconList=const[
  Icon(FontAwesomeIcons.facebook,),
  Icon(FontAwesomeIcons.googlePlus,),
  Icon(FontAwesomeIcons.twitter,),
  Icon(FontAwesomeIcons.youtube,),

];
List textList=const[
  "facebook",
  "googlePlus",
  "twitter",
  "youtube",

];
List url=const[
  "https://www.facebook.com/GDGOctober",
  "https://gdg.community.dev/gdg-6-october/",
  "https://twitter.com/GDGOctober",
  "https://www.youtube.com/@gdg6october659",

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
                      onTap:()async{
                        final Uri _url = Uri.parse('${url[i]}');
                        await launchUrl(_url);
                      },
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

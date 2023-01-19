import 'package:flutter/material.dart';
import 'package:draggable_home/draggable_home.dart';
import 'package:gdg_6_october/Presentation/HomeBadge/widget/cover/cover.dart';
import 'package:gdg_6_october/Presentation/style/ColorManger/ColorManger.dart';
import 'package:gdg_6_october/Presentation/style/Image.dart';
import 'package:gdg_6_october/Presentation/style/text/StaticText.dart';
class AboutAs extends StatelessWidget {
  const AboutAs({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  DraggableHome(
      fullyStretchable:true,
      title:Text(StaticText.aboutAs),
      backgroundColor: Colors.white,
      headerWidget: cover(
          MediaQuery.of(context).size.height*1.6,
          ColorManager.aboutAsCover.withOpacity(.3),
          ImageApp.aboutAs,
          StaticText.aboutAs
      ),
      body: const[
        Text("About",textAlign: TextAlign.center,style: TextStyle(
          fontWeight:FontWeight.bold ,
          fontSize: 20
        )),
        Padding(
          padding: EdgeInsets.only(left: 30.0,right: 30),

          child: Text('''
          
GDG 6 October [Google Developer Group - 6 october] is one of the technical communities in Egypt, we have some interesting conferences, competitions, and many other creative activities.

It's a technical user group for people who are interested in Google's developer technology :

Android - Mobile development (Java)

Chrome OS - a lightweight operating system based on Linux and Google Chrome browser

Google App Engine - scalable cloud computing (Python and Java)

Google Chrome - The browser, extensions etc

Google Data APIs - YouTube, Google Maps, Google Map Maker, Calendar, Translator etc

Google Search and SEO.

The group is managed by volunteers, experts in many fields. And we are always happy to accept new volunteers interested in being part of the organizational team.

Visit our website, chapter page at gdgoctober.org . and stay in touch with our official Google+, Twitter, and Facebook.

Disclaimer: GDG 6 October is an independent group; our activities and the opinions expressed here should in no way be linked to Google, the corporation. To learn more about the GDG program, visit https://developers.google.com/community/gdg/
          ''',
          textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}

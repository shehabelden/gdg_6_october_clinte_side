import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gdg_6_october/Presentation/HomeBadge/cubt/cubt/cubt.dart';
import 'package:gdg_6_october/Presentation/HomeBadge/cubt/state/state.dart';
import 'package:gdg_6_october/Presentation/style/ColorManger/ColorManger.dart';
import 'package:gdg_6_october/Presentation/style/Container/postContainer.dart';
import 'package:gdg_6_october/Presentation/style/Container/static%20container.dart';
import 'package:gdg_6_october/Presentation/style/Image.dart';
import 'package:gdg_6_october/Presentation/style/size/Container.dart';
List <Color> colorList=[
  ColorManager.teamCover,
  ColorManager.eventCover,
  ColorManager.socialMediaCover,
  ColorManager.aboutAsCover,
];
List imageList=[
  ImageApp.team,
  ImageApp.event,
  ImageApp.socialmedia,
  ImageApp.aboutAs,
];
List route=[
  "team",
  'event',
  'socialMedia',
  'AboutAs',
];
class HomeBadge extends StatelessWidget {
  const HomeBadge({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var cubt=HomeApiCubt.get(context);
    cubt.mainList("home/post");
    return Column(
      children: [
        SizedBox(
          height:Height.small*MediaQuery.of(context).size.height,
          child: ListView.builder(
              itemCount: colorList.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (c,i){
                return Padding(
                  padding: const EdgeInsets.only(right: 7.5,left:7.5),
                  child: InkWell(
                    onTap: () async{
                     await Navigator.pushNamed(context, "/${route[i]}");
                    },
                    child: staticContainer(
                      MediaQuery.of(context).size.height,
                      MediaQuery.of(context).size.width,
                      colorList[i].withOpacity(.3),
                      imageList[i],
                      route[i],
                    ),
                  ),
                );
              }),
        ),
        BlocConsumer<HomeApiCubt,HomeApiState>(
            listener: (c,i){},
            builder: (context,i) {
            return ListView.builder(
                shrinkWrap: true,
                itemCount:cubt.mainListPram.length ,
                itemBuilder: (c,i){
              return Padding(
                padding: const EdgeInsets.only(top: 40,left: 20,right: 20),
                child: postContainer(
                  MediaQuery.of(context).size.height*Height.large,
                  MediaQuery.of(context).size.width*Width.large,
                  cubt.mainListPram[i]["image"],
                  12,
                ),
              );
            });
          }
        ),
      ],
    );
  }
}

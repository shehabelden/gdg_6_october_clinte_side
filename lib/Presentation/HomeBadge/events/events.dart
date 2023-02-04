import 'package:flutter/material.dart';
import 'package:draggable_home/draggable_home.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gdg_6_october/Presentation/HomeBadge/widget/cover/cover.dart';
import 'package:gdg_6_october/Presentation/style/ColorManger/ColorManger.dart';
import 'package:gdg_6_october/Presentation/style/Container/postContainer.dart';
import 'package:gdg_6_october/Presentation/style/Image.dart';
import 'package:gdg_6_october/Presentation/style/size/Container.dart';
import 'package:gdg_6_october/Presentation/style/text/StaticText.dart';
import 'package:gdg_6_october/app/main_cubt/cubt/cubt.dart';
import 'package:gdg_6_october/app/main_cubt/state/state.dart';
import 'event/event.dart';
class Events extends StatelessWidget {
  const Events({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var cubt =MainCubt.get(context);
    cubt.mainList("events/");
    return  DraggableHome(
      fullyStretchable:false,
      title: Text(StaticText.event),
      backgroundColor: Colors.white,
      headerWidget: cover(
          MediaQuery.of(context).size.height*1.6,
          ColorManager.eventCover.withOpacity(.3),
          ImageApp.event,
          StaticText.event
      ),
      body: [
        BlocConsumer<MainCubt,MainState>(
          listener: (c,i){},
          builder: (c,i){
            return ListView.builder(
              shrinkWrap: true,
               itemCount:cubt.mainListPram.length,
                itemBuilder: (c,i) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 20.0,bottom: 20),
                    child: InkWell(
                      onTap: () async{
                       await Navigator.of(context).push(
                           MaterialPageRoute(
                            builder: (context) => Event(id:cubt.mainListPram[i]["id"]!)
                           )
                       );
                        },
                      child: Row(
                        children: [
                          postContainer(
                             MediaQuery.of(context).size.height*Height.medium,
                             MediaQuery.of(context).size.width*Width.medium,
                             cubt.mainListPram[i]["image"],
                              8),
                          SizedBox(
                             height:MediaQuery.of(context).size.height*Height.medium,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Text(cubt.mainListPram[i]["name"],),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 16.0,
                                      left: 10,
                                  ),
                                  child: Text(cubt.mainListPram[i]["date"],),
                                )
                              ],
                            ),
                          ),
                      ],
                ),
                    ),
                  );
              }
            );
          },
        )
      ],
    );
  }
}

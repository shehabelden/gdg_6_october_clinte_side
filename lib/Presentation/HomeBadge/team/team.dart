import 'package:flutter/material.dart';
import 'package:draggable_home/draggable_home.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gdg_6_october/Presentation/HomeBadge/widget/cover/cover.dart';
import 'package:gdg_6_october/Presentation/style/ColorManger/ColorManger.dart';
import 'package:gdg_6_october/Presentation/style/Image.dart';
import 'package:gdg_6_october/Presentation/style/text/StaticText.dart';
import 'package:gdg_6_october/app/main_cubt/cubt/cubt.dart';
import 'package:gdg_6_october/app/main_cubt/state/state.dart';
class Team extends StatelessWidget {
  const Team({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var cubt =MainCubt.get(context);
<<<<<<< HEAD
    cubt.mainListTeam("teams/");
=======
    cubt.mainList("teams/");
>>>>>>> 13bb8ca4347b53ea5847def815602b36dbce3003
    return  DraggableHome(
        fullyStretchable:false,
        title:const Text("team"),
        backgroundColor: Colors.white,
        headerWidget: cover(
          MediaQuery.of(context).size.height*1.6,
            ColorManager.teamCover.withOpacity(.3),
            ImageApp.team,
            StaticText.team,
        ),
        body: [
<<<<<<< HEAD
          BlocBuilder<MainCubt,MainState>(
=======
          BlocConsumer<MainCubt,MainState>(
            listener: (c,i){},
>>>>>>> 13bb8ca4347b53ea5847def815602b36dbce3003
            builder: (context,index){
              return SizedBox(
                width: 150.0,
                child: ListView.builder(
                    physics:const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
<<<<<<< HEAD
                    itemCount: cubt.mainListTeamPram.length,
=======
                    itemCount: cubt.mainListPram.length,
>>>>>>> 13bb8ca4347b53ea5847def815602b36dbce3003
                    itemBuilder: (c,i){
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(200.0),
                          child: Image.network(
<<<<<<< HEAD
                            cubt.mainListTeamPram[i]['image'],
=======
                            cubt.mainListPram[i]['image'],
>>>>>>> 13bb8ca4347b53ea5847def815602b36dbce3003
                            height: 150.0,
                            width: 150.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
<<<<<<< HEAD
                          child: Text(cubt.mainListTeamPram[i]["name"],
=======
                          child: Text(cubt.mainListPram[i]["name"],
>>>>>>> 13bb8ca4347b53ea5847def815602b36dbce3003
                          style:const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                          ),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
              );
            }
          )
        ],
    );
  }
}
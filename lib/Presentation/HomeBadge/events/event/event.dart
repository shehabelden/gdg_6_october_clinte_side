import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gdg_6_october/Presentation/HomeBadge/events/Widget/event%20list.dart';
import 'package:gdg_6_october/Presentation/style/size/Container.dart';
import 'package:gdg_6_october/app/main_cubt/cubt/cubt.dart';
import 'package:gdg_6_october/app/main_cubt/state/state.dart';
class Event extends StatelessWidget {
  final int  id;
  const Event({Key? key,required this.id}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var cubt=MainCubt.get(context);
    cubt.mainMap('events/event/$id');
    return Material(
      child: BlocBuilder<MainCubt,MainState>(
        builder: (context,i) {
          return Column(
            children: [
              Expanded(
                  flex: 1,
                  child: Stack(
                    children: [
                      Image.network(
                          cubt.mainMaoPram["image"],
                          fit: BoxFit.cover,
                          height:(MediaQuery.of(context).size.height/3)-20,
                      ),
                       Align(
                         alignment: Alignment.bottomRight,
                         child: InkWell(
                          onTap: (){},
                          child: Padding(
                            padding: const EdgeInsets.only(right: 20.0),
                            child: Container(
                              width:50 ,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(60,)
                              ),
                              child:const Icon(Icons.bookmark_border,color: Colors.white,),
                            ),
                          ) ,
                      ),
                       )
                    ],
                  ),
              ),
              Expanded(
                flex: 2,
                child:eventListView(
          Height.medium * MediaQuery.of(context).size.height,
          Width.medium * MediaQuery.of(context).size.width,
          cubt.mainMaoPram["topic"],
          )),
               SizedBox(
                child:cubt.mainMaoPram["avilabolevent"]==true? InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, "/tiketform");
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Container(
                        height:  60,
                        width:  180,
                        alignment: Alignment.center,
                        child:const Text("check her",style: TextStyle(
                          color:Colors.white
                        )),
                        decoration: BoxDecoration(
                          color:Colors.black,
                          borderRadius: BorderRadius.circular(10)
                        ),
                    ),
                  ),
                ) : Container(
                ),
              )
            ],
          );
        }
      ),
    );
  }
}

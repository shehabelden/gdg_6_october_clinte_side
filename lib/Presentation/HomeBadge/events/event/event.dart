import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gdg_6_october/Presentation/HomeBadge/events/Widget/event%20list.dart';
<<<<<<< HEAD
import 'package:gdg_6_october/Presentation/Tiket/badges/TixetForm.dart';
=======
>>>>>>> 13bb8ca4347b53ea5847def815602b36dbce3003
import 'package:gdg_6_october/Presentation/style/size/Container.dart';
import 'package:gdg_6_october/app/main_cubt/cubt/cubt.dart';
import 'package:gdg_6_october/app/main_cubt/state/state.dart';
class Event extends StatelessWidget {
<<<<<<< HEAD
   final int id;
   const Event({Key? key,required this.id}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var cubt=MainCubt.get(context);
    // print(id);
    cubt.mainMap('events/event/$id');
    return Material(
      child: BlocBuilder<MainCubt,MainState>(
          builder: (context,i){
            // print(cubt.mainMaoPram);
            return cubt.mainMaoPram.isNotEmpty ? Column(
=======
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
>>>>>>> 13bb8ca4347b53ea5847def815602b36dbce3003
            children: [
              Expanded(
                  flex: 1,
                  child: Stack(
                    children: [
                      Image.network(
                          cubt.mainMaoPram["image"],
                          fit: BoxFit.cover,
<<<<<<< HEAD
                          height:(MediaQuery.of(context).size.height/3.5),
=======
                          height:(MediaQuery.of(context).size.height/3)-20,
>>>>>>> 13bb8ca4347b53ea5847def815602b36dbce3003
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
<<<<<<< HEAD
                  onTap: ()async{
                    await Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => TiketFormMainBadge(
                          image: cubt.mainMaoPram["image"],
                          name1:cubt.mainMaoPram["name"],
                          // date: cubt.mainMaoPram["date"],
                        )));
=======
                  onTap: (){
                    Navigator.pushNamed(context, "/tiketform");
>>>>>>> 13bb8ca4347b53ea5847def815602b36dbce3003
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Container(
                        height:  60,
                        width:  180,
                        alignment: Alignment.center,
<<<<<<< HEAD
                        child: Text("check her",style: TextStyle(
=======
                        child:const Text("check her",style: TextStyle(
>>>>>>> 13bb8ca4347b53ea5847def815602b36dbce3003
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
<<<<<<< HEAD
          ):Container();
=======
          );
>>>>>>> 13bb8ca4347b53ea5847def815602b36dbce3003
        }
      ),
    );
  }
}

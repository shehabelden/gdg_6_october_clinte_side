import 'package:flutter/material.dart';
import 'package:gdg_6_october/Presentation/Profile/badges/ProfileBadge.dart';

AppBar appBar(context){
  return AppBar(
    foregroundColor: Colors.black,
    title:const Center(
      child:  Text("gdg",style: TextStyle(
        color: Colors.black,
      ),
        textAlign: TextAlign.center,
      ),
    ),
    backgroundColor: Colors.white10,
    elevation: 0,
    actions: [
      IconButton(onPressed: ()async{
       await Navigator.of(context).push(
            MaterialPageRoute(
                builder: (context) =>const ProfileBadge()
            ),
        );
      }, icon:const Icon(
        Icons.person_outline_rounded,
        color: Colors.black,)
      ),
    ],
    // leading: IconButton(onPressed: ()async{
    //   await Navigator.of(context).push(
    //     MaterialPageRoute(
    //         builder: (context) =>const ProfileBadge()
    //     ),
    //   );
    // }, icon:const Icon(
    //   Icons.menu,
    //   color: Colors.black,),
    // ),
  );
}
import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:gdg_6_october/Presentation/Profile/badges/ProfileBadge.dart';

AppBar appBar(context){
  return AppBar(
    foregroundColor: Colors.black,
=======

AppBar appBar(){
  return AppBar(
>>>>>>> 13bb8ca4347b53ea5847def815602b36dbce3003
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
<<<<<<< HEAD
      IconButton(onPressed: ()async{
       await Navigator.of(context).push(
            MaterialPageRoute(
                builder: (context) =>const ProfileBadge()
            ),
        );
      }, icon:const Icon(
=======
      IconButton(onPressed: (){}, icon:const Icon(
>>>>>>> 13bb8ca4347b53ea5847def815602b36dbce3003
        Icons.person_outline_rounded,
        color: Colors.black,)
      ),
    ],
<<<<<<< HEAD
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
=======
    leading: IconButton(onPressed: (){}, icon:const Icon(
      Icons.menu,
      color: Colors.black,),
    ),
>>>>>>> 13bb8ca4347b53ea5847def815602b36dbce3003
  );
}
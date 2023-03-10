import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gdg_6_october/Presentation/HomeBadge/homeBadge.dart';
import 'package:gdg_6_october/Presentation/HomeBadge/widget/app_bar/app_bar.dart';
import 'package:gdg_6_october/Presentation/Main_Screan/cubt/cubt/cubt.dart';
import 'package:gdg_6_october/Presentation/Main_Screan/cubt/state/state.dart';
import 'package:gdg_6_october/Presentation/Saved/saved.dart';
import 'package:gdg_6_october/Presentation/Tiket/badges/MainTekit.dart';
import 'package:gdg_6_october/Presentation/blog/BlogBadge.dart';
import 'package:gdg_6_october/Presentation/style/ColorManger/ColorManger.dart';
import 'package:gdg_6_october/app/cache_helper/cache_helper.dart';
import 'package:iconly/iconly.dart';
List badges= const[
  HomeBadge(),
  MainTiket(),
  BlogBadge(),
  SavedBadge(),
];
class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var cubt=NavBarCubt.get(context);
    return BlocBuilder<NavBarCubt,MainNavState>(
      builder: (c,i) {
        return Scaffold(
            appBar: appBar(context),
            drawer: Drawer(
              child: Column(
                children: [
                  UserAccountsDrawerHeader(
                      accountName:const Text("shehab"),
                      accountEmail:const Text("shehab.ehab84@gmail.com"),
                      currentAccountPicture: Image.asset("Images/event.jpg"),
                  ),
                  Row(
                    children: [
                      IconButton(onPressed: (){
                        CacheHelper.removeData(key:"token_pref",);
                      }, icon:const Icon(Icons.logout_outlined),),
                      const Text("log out"),
                    ],
                  ),
                ],
              ),
            ),
            body:badges[cubt.listCont],
            bottomNavigationBar:BottomNavigationBar(
              elevation: 0,
              items:const [
                BottomNavigationBarItem(
                  icon: Icon(
                      IconlyLight.home,
                      color: ColorManager.prime),
                  label: "home",
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                      IconlyLight.ticket,
                      color: ColorManager.prime),
                  label: "ticket",
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                      IconlyLight.document,
                      color: ColorManager.prime),
                  label: "document",
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                      IconlyLight.bookmark,
                      color: ColorManager.prime),
                  label: "bookmark",
                ),
              ],
              currentIndex :cubt.listCont,
              onTap:(index){
                cubt.cont(index,badges);
              },
            ),
        );
      }
    );
  }
}

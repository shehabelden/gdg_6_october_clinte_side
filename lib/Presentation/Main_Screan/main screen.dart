import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gdg_6_october/Presentation/HomeBadge/homeBadge.dart';
import 'package:gdg_6_october/Presentation/HomeBadge/widget/app_bar/app_bar.dart';
import 'package:gdg_6_october/Presentation/Main_Screan/cubt/cubt/cubt.dart';
import 'package:gdg_6_october/Presentation/Main_Screan/cubt/state/state.dart';
import 'package:gdg_6_october/Presentation/Tiket/badges/TixetForm.dart';
import 'package:gdg_6_october/Presentation/blog/BlogBadge.dart';
import 'package:gdg_6_october/Presentation/style/ColorManger/ColorManger.dart';
import 'package:iconly/iconly.dart';
List badges= const[
  HomeBadge(),
  BlogBadge(),
];
class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var cubt=NavBarCubt.get(context);
    return BlocBuilder<NavBarCubt,MainNavState>(
      builder: (c,i) {
        return Scaffold(
            appBar: appBar(),
            body:badges[cubt.listCont],
            bottomNavigationBar:BottomNavigationBar(
              elevation: 0,
              items:const [
                BottomNavigationBarItem(
                  icon: Icon(
                      IconlyLight.home,
                      color: ColorManager.prime),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                      IconlyLight.ticket,
                      color: ColorManager.prime),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                      IconlyLight.document,
                      color: ColorManager.prime),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                      IconlyLight.bookmark,
                      color: ColorManager.prime),
                  label: "",
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

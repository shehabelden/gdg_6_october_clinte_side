import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gdg_6_october/Presentation/Profile/cubt/cubt/cubt.dart';
import 'package:gdg_6_october/Presentation/Profile/cubt/state/state.dart';

class ProfileBadge extends StatelessWidget {
  const ProfileBadge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cubt=ProfApiCubt.get(context);
    cubt.mainMap("auth/profile/1");
    return  SafeArea(
      child: Scaffold(
        body: BlocBuilder<ProfApiCubt,ProfApiState>(
          builder: (context,state) {
            return state is LoadingState?
           const Center(child: CircularProgressIndicator()) : Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Stack(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height/5,
                        child: Image.network(cubt.mainMaoPram["image"],fit: BoxFit.cover),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(200),
                            image: DecorationImage(
                              image: NetworkImage(cubt.mainMaoPram["image"]),
                            )
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(),
                ),
              ],
            );
          }
        ),
      ),
    );
  }
}

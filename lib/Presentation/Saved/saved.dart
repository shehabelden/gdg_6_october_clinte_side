import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gdg_6_october/Presentation/Saved/cubt/cubt/cubt.dart';
import 'package:gdg_6_october/Presentation/Saved/cubt/state/state.dart';
import 'package:gdg_6_october/Presentation/style/Container/postContainer.dart';
import 'package:gdg_6_october/Presentation/style/size/Container.dart';

class SavedBadge extends StatelessWidget {
  const SavedBadge({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var cubt=SavedCubt.get(context);
    cubt.getDb();
    return Material(
      child: BlocBuilder<SavedCubt,BaseSavedState>(
          builder: (context,state) {
            return state is LoadingState? const Center(child: CircularProgressIndicator()) : Padding(
              padding: const EdgeInsets.only(left:20.0),
              child: ListView.builder(
                  itemCount: cubt.mySaved.length,
                  itemBuilder: (context,i) {
                    return Padding(
                      padding: const EdgeInsets.only(top:40.0),
                      child: Row(
                        children: [
                          postContainer(
                              MediaQuery.of(context).size.height*Height.medium,
                              MediaQuery.of(context).size.width*Width.medium,
                              cubt.mySaved[i]["image"],
                              8),
                          SizedBox(
                            height:MediaQuery.of(context).size.height*Height.medium,
                            width:80,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding:const EdgeInsets.only(top: 8.0),
                                  child: Text(cubt.mySaved[i]["name"].toString()),
                                ),
                                Padding(
                                  padding:const EdgeInsets.only(
                                    bottom: 16.0,
                                    left: 10,
                                  ),
                                  child: Text(cubt.mySaved[i]["id"].toString()),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height:MediaQuery.of(context).size.height*Height.medium,
                            width:(MediaQuery.of(context).size.width*Width.medium) -80,
                            alignment: Alignment.topRight,
                            child: PopupMenuButton(itemBuilder: (context)=>[
                              PopupMenuItem(child:Row(
                                children: const[
                                  Text("delete")
                                ],
                              ),
                                onTap: (){
                                  cubt.deleteDb(cubt.mySaved[i]["id"].toString());
                                },
                              ),
                            ],
                              child:const Icon(Icons.more_vert),
                            ),
                          ),
                        ],
                      ),
                    );
                  }
              ),
            );
          }
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gdg_6_october/Presentation/Tiket/cubt/cubt/cubt.dart';
import 'package:gdg_6_october/Presentation/Tiket/cubt/state/state.dart';
import 'package:gdg_6_october/Presentation/style/Container/postContainer.dart';
import 'package:gdg_6_october/Presentation/style/size/Container.dart';

class MainTiket extends StatelessWidget {
  const MainTiket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cubt=TiketCubt.get(context);
<<<<<<< HEAD
    cubt.getDb();
    return BlocBuilder<TiketCubt,BaseTiketState>(
      builder: (context,state) {
        return state is LoadingState ? const Material(
          child: Center(child: CircularProgressIndicator()),) :Padding(
          padding: const EdgeInsets.only(left:20.0),
          child: ListView.builder(
            itemCount: cubt.myTiket.length,
            itemBuilder: (context,i) {
              return Padding(
                padding: const EdgeInsets.only(top:40.0),
                child: Row(
                  children: [
                    postContainer(
                        MediaQuery.of(context).size.height*Height.medium,
                        MediaQuery.of(context).size.width*Width.medium,
                        cubt.myTiket[i]["image"],
                        8),
                    SizedBox(
                      height:MediaQuery.of(context).size.height*Height.medium,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding:const EdgeInsets.only(top: 8.0),
                            child: Text(cubt.myTiket[i]["name"].toString()),
                          ),
                          Padding(
                            padding:const EdgeInsets.only(
                              bottom: 16.0,
                              left: 10,
                            ),
                            child: Text(cubt.myTiket[i]["id"].toString()),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }
          ),
=======
    cubt.getTiket("");
    return BlocBuilder<TiketCubt,BaseTiketState>(
      builder: (context,index) {
        return ListView.builder(
          itemCount: cubt.myTiket.length,
          itemBuilder: (context,i) {
            return Row(
            children: [
            postContainer(
            MediaQuery.of(context).size.height*Height.medium,
            MediaQuery.of(context).size.width*Width.medium,
            "cubt.mainListPram[i][image]",
                8),
            SizedBox(
            height:MediaQuery.of(context).size.height*Height.medium,
            child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const[
            Padding(
            padding:  EdgeInsets.only(top: 8.0),
            child: Text("cubt.mainListPram[i][name]",),
            ),
            Padding(
            padding:  EdgeInsets.only(
            bottom: 16.0,
            left: 10,
            ),
            child: Text("cubt.mainListPram[i][date],"),
            )
            ],
            ),
            ),
            ],
            );
          }
>>>>>>> 13bb8ca4347b53ea5847def815602b36dbce3003
        );
      }
    );
  }
}

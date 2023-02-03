import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gdg_6_october/Presentation/blog/Widget/List_View.dart';
import 'package:gdg_6_october/Presentation/blog/cubt/cubt/cubt.dart';
import 'package:gdg_6_october/Presentation/blog/cubt/state/state.dart';
import 'package:gdg_6_october/Presentation/style/size/Container.dart';

class MaiBlogBadge extends StatelessWidget {
  final String id;
  const MaiBlogBadge({Key? key,required this.id}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var cubt=BlogApiCubt.get(context);
    cubt.mainMap("Blogs/MainBlog/$id");
    return  BlocBuilder<BlogApiCubt,BlogApiState>(
      builder: (context,state) {
        return Material(
          child:state is LoadState ? Center(child: const CircularProgressIndicator()): Scaffold(
            appBar: AppBar(
              foregroundColor: Colors.black,
              backgroundColor: Colors.white24,
              title:Text("${cubt.mainMaoPram["title"]}",style:const TextStyle(
              ),),
              elevation: 0,
            ),
            body:cubt.mainListPramHorizontalret.isNotEmpty ? Padding(
              padding: const EdgeInsets.only(top:20.0),
              child: listView(
                Height.medium * MediaQuery.of(context).size.height,
                Width.medium * MediaQuery.of(context).size.width,
                cubt.mainListPramHorizontalret,
                context,
              ),
            ):const CircularProgressIndicator(),
          ),
        );
      }
    );
  }
}

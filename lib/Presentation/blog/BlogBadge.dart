import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gdg_6_october/Presentation/blog/Widget/List_View.dart';
import 'package:gdg_6_october/Presentation/blog/Widget/List_View_Horizontal.dart';
import 'package:gdg_6_october/Presentation/blog/Widget/text.dart';
import 'package:gdg_6_october/Presentation/blog/cubt/cubt/cubt.dart';
import 'package:gdg_6_october/Presentation/blog/cubt/state/state.dart';
import 'package:gdg_6_october/Presentation/style/size/Container.dart';
import 'package:gdg_6_october/models/saved/savedmodel.dart';

class BlogBadge extends StatelessWidget {
  const BlogBadge({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var cubt=BlogApiCubt.get(context);
    cubt.mainList("Blogs/AllBlog");
    cubt.mainListHorizontal("Blogs/MainBlog");
    return BlocBuilder<BlogApiCubt,BlogApiState>(
      builder: (context,i) {
        return SingleChildScrollView(
          child: Column(
           children: [
             text("Main Blogs"),
             listViewHorizontal(
               Height.medium * MediaQuery.of(context).size.height,
               Width.medium * MediaQuery.of(context).size.width,
               cubt.mainListPramHorizontal,
               context
             ),
             text("all Blogs"),
             Align(
               alignment: Alignment.centerLeft,
               child: listView(
                 Height.medium * MediaQuery.of(context).size.height,
                 Width.medium * MediaQuery.of(context).size.width,
                 cubt.mainListPram,
                   context,
               ),
             ),
           ],
          ),
        );
      }
    );
  }
}
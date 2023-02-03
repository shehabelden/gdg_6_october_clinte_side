import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gdg_6_october/Domain/Dio/dio_get.dart';
import 'package:gdg_6_october/Presentation/blog/cubt/state/state.dart';
<<<<<<< HEAD
import 'package:gdg_6_october/db/saved/saved.dart';
import 'package:gdg_6_october/models/saved/savedmodel.dart';
=======
>>>>>>> 13bb8ca4347b53ea5847def815602b36dbce3003
class BlogApiCubt extends Cubit<BlogApiState>{
  BlogApiCubt() : super(BlogApiInitState());
  static  BlogApiCubt get(context)=>BlocProvider.of(context);
  List mainListPram=[];
<<<<<<< HEAD
  List mainListPramHorizontalret=[];
  List mainListPramHorizontal=[];
  List manuList=["delete"];
  Map<String,dynamic> mainMaoPram={};
  manuFanc(SavedModel data){
      SavedDb.insert(data);
    // print(gender);
    emit(ManuState());
  }

=======
  List mainListPramHorizontal=[];
  Map<String,dynamic> mainMaoPram={};
>>>>>>> 13bb8ca4347b53ea5847def815602b36dbce3003
  void mainList(url) async{
    await DioHelper.getData(url: url).then((value){
      mainListPram=value.data;
    });
    emit(ListBlogApiState());
  }
  void mainListHorizontal(url) async{
    await DioHelper.getData(url: url).then((value){
      mainListPramHorizontal=value.data;
    });
    emit(ListBlogHorizontalApiState());
  }

  void mainMap(url) async{
<<<<<<< HEAD
    emit(LoadState());
    await DioHelper.getData(url: url).then((value){
      mainMaoPram=value.data;
      mainListPramHorizontalret=mainMaoPram["blog"];
      emit(MapBlogApiState());
    });
=======
    await DioHelper.getData(url: url).then((value){
      mainMaoPram=value.data;
    });
    emit(MapBlogApiState());
>>>>>>> 13bb8ca4347b53ea5847def815602b36dbce3003
  }
}
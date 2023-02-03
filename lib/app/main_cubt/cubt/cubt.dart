import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gdg_6_october/Domain/Dio/dio_get.dart';
import 'package:gdg_6_october/app/cache_helper/cache_helper.dart';
import 'package:gdg_6_october/app/main_cubt/state/state.dart';
class MainCubt extends Cubit<MainState>{
  MainCubt() : super(MainInit());
  static  MainCubt get(context)=>BlocProvider.of(context);
  String ? tokenKey;
  List mainListPram=[];
  List mainListTeamPram=[];
  Map<String,dynamic> mainMaoPram={};
  Map<String,dynamic> mainMaoPramTeam={};
  void token(){
    tokenKey=CacheHelper.get(key:"token_pref",);
    // print("save $token_key");
    emit(MainTokenState());
  }
  void mainList(url) async{
    await DioHelper.getData(url: url).then((value){
      mainListPram=value.data;
    });
    emit(MainListState());
  }
  void mainListTeam(url) async{
    await DioHelper.getData(url: url).then((value){
      mainListTeamPram=value.data;
    });
    emit(MainListTeamState());
  }

  void mainMap(url) async{
   await DioHelper.getData(url: url).then((value){
      mainMaoPram=value.data;
      // print(mainMaoPram);
   });
   emit(MainMapState());
  }
  void mainMapTeam(url) async{
    await DioHelper.getData(url: url).then((value){
      mainMaoPramTeam=value.data;
    });
    emit(MainTeamMapState());
  }

}
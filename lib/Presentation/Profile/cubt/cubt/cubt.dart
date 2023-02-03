import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gdg_6_october/Domain/Dio/dio_get.dart';
import 'package:gdg_6_october/Presentation/Profile/cubt/state/state.dart';
class ProfApiCubt extends Cubit<ProfApiState>{
  ProfApiCubt() : super(ProfApiInitState());
  static  ProfApiCubt get(context)=>BlocProvider.of(context);
  List mainListPram=[];
  Map<String,dynamic> mainMaoPram={};
  void mainList(url) async{
    await DioHelper.getData(url: url).then((value){
      mainListPram=value.data;
    });
    emit(ListProfApiState());
  }
  void mainMap(url) async{
    emit(LoadingState());
    await DioHelper.getData(url: url).then((value){
      mainMaoPram=value.data;
    });
    emit(MapProfApiState());
  }
}
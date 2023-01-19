import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gdg_6_october/Domain/Dio/dio_get.dart';
import 'package:gdg_6_october/Presentation/Tiket/cubt/state/state.dart';
import 'package:gdg_6_october/db/tiket/tiketlocalmodel.dart';
class TiketCubt extends Cubit<BaseTiketState>{
  late List myTiket;
  String gender="men";
  List <String> genderList=["men","woman"];
  TiketCubt() : super(TiketInitState());
  static  TiketCubt get(context)=>BlocProvider.of(context);
  void postFormTiket(String url,Map<String,dynamic>data){
    DioHelper.postData(url: url,data: data).then((value){
      myTiket=value.data;
      if(value.statusCode==200){
        // insertDb(data);
      }
      // print(data.toString());

    });
    emit(PostTiketFormState());
  }
  genderFanc(iteam){
    gender=iteam;
    // print(gender);
    emit(Gender());

  }

  void getTiket(String url){
    DioHelper.getData(url: url).then((value){
      myTiket=value.data;
    });
    emit(GetTiketState());
  }
  void insertDb(Map <String,dynamic> data){
    TiketDb.insert({});
    emit(InsertDbState());
  }
}
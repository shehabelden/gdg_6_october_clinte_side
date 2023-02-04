import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gdg_6_october/Domain/Dio/dio_get.dart';
import 'package:gdg_6_october/Presentation/Tiket/cubt/state/state.dart';
import 'package:gdg_6_october/db/tiket/tiketlocalmodel.dart';
import 'package:gdg_6_october/models/Tiket/Tiketmodel.dart';
class TiketCubt extends Cubit<BaseTiketState>{
  TiketCubt() : super(TiketInitState());
  static  TiketCubt get(context)=>BlocProvider.of(context);
  late List myTiket;
  bool ? flag ;
  String gender="man";
  List <String> genderList=["man","woman"];
  void postFormTiket(String url,Map<String,dynamic>data,image,name){
    DioHelper.postData(url: url,data: data).then((value){
        insertDb(data,image,name);
        // print("succ");
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
  void insertDb(Map <String , dynamic>data,image,name){
    TiketModel tiketModel =  TiketModel(
      name:name,
      image:image,
      gender:data["gender"],
    );
      try {
        TiketDb.insert(tiketModel);
        flag=true;
      }on TiketDb catch(e){
        flag=false;
        print(e);
      }
    TiketDb.get();
    emit(InsertDbState());
  }
  void getDb()async{
    emit(LoadingState());
    await TiketDb.get();
    myTiket=TiketDb.getdata;
    print(myTiket);
    emit(GetTiketState());
  }

}
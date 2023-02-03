import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gdg_6_october/Domain/Dio/dio_get.dart';
import 'package:gdg_6_october/Presentation/Tiket/cubt/state/state.dart';
import 'package:gdg_6_october/db/tiket/tiketlocalmodel.dart';
<<<<<<< HEAD
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
=======
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

>>>>>>> 13bb8ca4347b53ea5847def815602b36dbce3003
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
<<<<<<< HEAD
  void insertDb(Map <String , dynamic>data,image,name){
    TiketModel tiketModel =  TiketModel(
      name:name,
      image:image,
      gender:data["gender"],
    );
        TiketDb.insert(tiketModel);
        flagTrue();
    TiketDb.get();
    emit(InsertDbState());
  }
  void flagTrue()async{
    flag== true;
    emit(FlagTrueState());
  }
  void flagFalse()async{
    flag==false;
    emit(FlagFalseState());
  }

  void getDb()async{
    emit(LoadingState());
    await TiketDb.get();
    myTiket=TiketDb.getdata;
    print(myTiket);
    emit(GetTiketState());
  }

=======
  void insertDb(Map <String,dynamic> data){
    TiketDb.insert({});
    emit(InsertDbState());
  }
>>>>>>> 13bb8ca4347b53ea5847def815602b36dbce3003
}
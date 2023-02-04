import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gdg_6_october/Presentation/Saved/cubt/state/state.dart';
import 'package:gdg_6_october/db/saved/saved.dart';
import 'package:gdg_6_october/db/tiket/tiketlocalmodel.dart';
import 'package:gdg_6_october/models/saved/savedmodel.dart';
class SavedCubt extends Cubit<BaseSavedState>{
   List icons=[
     "delete"
   ];
   List mySaved=[
   ];
   SavedCubt() : super(SavedInitState());
  static  SavedCubt get(context)=>BlocProvider.of(context);
  manuFanc(iteam){
    if(iteam=="delete"){

    }
    // print(gender);
    emit(ListButtonState());

  }

  void getDb()async{
    emit(LoadingState());
    await SavedDb.get();
    mySaved=SavedDb.getdata;
    print(mySaved);
    emit(GetState());
  }
   void deleteDb(id){
     SavedDb.delete(id);
     emit(DeleteSavedDbState());
   }
  void exption(){

  }

}
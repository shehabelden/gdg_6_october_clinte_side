import 'package:gdg_6_october/db/tiket/tiketlocalmodel.dart';

class TiketDbExption{
  void e(data){
    try {
      TiketDb.insert(data);
    }on TiketDb catch(e){
      print(e);
    }
  }
}
<<<<<<< HEAD
import 'package:gdg_6_october/models/Tiket/Tiketmodel.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
class TiketDb{
   static late final database;
   static List getdata=[];
   static bool ? check;
  static init() async{
      database = openDatabase(
        join(await getDatabasesPath(), 'doggie_database.db'),
    // When the database is first created, create a table to store dogs.
        onCreate: (db, version) {
    // Run the CREATE TABLE statement on the database.
    return  db.execute(
      'CREATE TABLE Tiket('
          'id INTEGER PRIMARY KEY, '
          'name TEXT,image TEXT, '
          'gender TEXT'
          ')',
    );
    },
    // Set the version. This executes the onCreate function and provides a
    // path to perform database upgrades and downgrades.
    version: 1,
    );
  }
  static insert(TiketModel data)async{
    final Database db=await database;
    db.insert("Tiket",
        data.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace).then((value) => {

    });
  }
  static get()async{
     final Database db=await database;
     List <Map<String,dynamic>>gettiket= await db.query("Tiket");
     getdata=gettiket;
     // print(gettiket);
     return List.generate(gettiket.length, (index){
       return TiketModel(
           name : gettiket[index]["name"],
           gender : gettiket[index]["gender"],
           image : gettiket[index]["image"],
       );
     });
  }
   static delete(id)async{
     final Database db=await database;
     db.delete(
       "Tiket",
       where: "id = ?",
       whereArgs: [id],
     );
   }

=======
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
class TiketDb{
  static ticketDb()async {
    final database = openDatabase(
      join(await getDatabasesPath(), 'doggie_database.db'),
      // When the database is first created, create a table to store dogs.
      onCreate: (db, version) {
        // Run the CREATE TABLE statement on the database.
        return db.execute(
          'CREATE TABLE Tiket(id INTEGER PRIMARY KEY, name TEXT, date INTEGER,image TEXT, gender TEXT,)',
        );
      },
      // Set the version. This executes the onCreate function and provides a
        // path to perform database upgrades and downgrades.
      version: 1,
    );
  }
  static init(){
    ticketDb();
  }
  static insert(Map <String,dynamic> data){

  }
>>>>>>> 13bb8ca4347b53ea5847def815602b36dbce3003
}
import 'package:gdg_6_october/models/saved/savedmodel.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
class SavedDb{
  static late final database;
  static List getdata=[];
  static init() async{
    database = openDatabase(
      join(await getDatabasesPath(), 'Saved_database.db'),
      // When the database is first created, create a table to store dogs.
      onCreate: (db, version) {
        // Run the CREATE TABLE statement on the database.
        return  db.execute(
          'CREATE TABLE Saved('
              'id INTEGER PRIMARY KEY, '
              'name TEXT,'
              'image TEXT, '
              'gender TEXT, '
              'link TEXT'
              ')',
        );
      },
      // Set the version. This executes the onCreate function and provides a
      // path to perform database upgrades and downgrades.
      version: 1,
    );
  }
  static insert(SavedModel data)async{
    final Database db=await database;
    db.insert(
        "Saved",
        data.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace
    );
  }
  static get()async{
    final Database db=await database;
    List <Map<String,dynamic>>gettiket= await db.query("Saved");
    getdata=gettiket;
    // print(gettiket);
    return List.generate(gettiket.length, (index){
      return SavedModel(
        name : gettiket[index]["name"],
        gender : gettiket[index]["gender"],
        image : gettiket[index]["image"],
        link : gettiket[index]["link"],
      );
    });
  }
  static delete(id)async{
    final Database db=await database;
    db.delete(
        "Saved",
      where: "id = ?",
      whereArgs: [id],
    );
  }

}
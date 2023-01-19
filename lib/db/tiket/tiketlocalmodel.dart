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
}
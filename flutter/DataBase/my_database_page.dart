import 'dart:io';

import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class MyDataBase {
  Future<Database> initDatabase() async {
    Directory appDocDir = await getApplicationDocumentsDirectory();
    String databasePath = join(appDocDir.path, 'database.db');
    return await openDatabase(
      databasePath,
      version: 2,
    );
  }

  Future<bool> copyPasteAssetFileToRoot() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "database.db");

    if (FileSystemEntity.typeSync(path) == FileSystemEntityType.notFound) {
      ByteData data =
          await rootBundle.load(join('assets/database', 'database.db'));
      List<int> bytes =
          data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
      await File(path).writeAsBytes(bytes);
      return true;
    }
    return false;
  }

  Future<List<Map<String, Object?>>> getAllFromDatabase() async {
    Database db = await initDatabase();
    List<Map<String, Object?>> data =
        await db.rawQuery('select * from User_Info');
    return data;
  }

 Future<void> addUser(Map<String,dynamic> m) async {
    Database db = await initDatabase();
    await db.rawQuery('insert into User_Info (UserName) VALUES("${m['UserName']}") ');
 }

  Future<void> editUser(Map<String,dynamic> m) async {
    Database db = await initDatabase();
    await db.rawQuery('update User_Info set UserName = "${m['UserName']}" where UserID = ${m['UserID']}');
  }
 
 Future<void> deleteUser(int id) async {
    Database db = await initDatabase();
    await db.rawQuery('delete from User_Info where UserID = $id');
 }
}

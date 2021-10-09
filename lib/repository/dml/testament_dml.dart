import 'package:bible/models/testament_model.dart';
import 'package:bible/repository/databasehelper.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';

class VerseDML {
  DataBaseApp _db = DataBaseApp();
  String table = 'testament';

  Future<List<TestamentModel>> index() async {
    Database db = await _db.initializeDatabase();
    List data = await db.query(table);

    List<TestamentModel> _list = data.isNotEmpty
        ? data.map((e) => TestamentModel.fromJson(e)).toList()
        : [];

    return _list;
  }

  Future close() async {
    Database db = await _db.initializeDatabase();
    await db.close();
  }
}

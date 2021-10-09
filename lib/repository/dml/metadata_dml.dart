import 'package:bible/models/metadata_model.dart';
import 'package:bible/repository/databasehelper.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';

class VerseDML {
  DataBaseApp _db = DataBaseApp();
  String table = 'metadata';

  Future<List<MetaDataModel>> index() async {
    Database db = await _db.initializeDatabase();
    List data = await db.query(table);

    List<MetaDataModel> _list = data.isNotEmpty
        ? data.map((e) => MetaDataModel.fromJson(e)).toList()
        : [];

    return _list;
  }

  Future close() async {
    Database db = await _db.initializeDatabase();
    await db.close();
  }
}

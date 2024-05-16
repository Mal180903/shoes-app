import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseInstance{
  final String _databaseName = 'my_database.db';
  final int _databaseVersion = 1;

  final String table = 'pengguna';
  final String id = 'id';
  final String username = 'username';
  final String password = 'password';

  Database? _database;
  Future<Database> database() async {
    if (_database != null) {
      return _database!;
    }

    _database = await _initDatabase();

    return _database!;
  }

  Future _initDatabase() async {
    Directory documentDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentDirectory.path, _databaseName);

    return openDatabase(path, onCreate: _onCreate);
  }

  Future _onCreate(Database db, int version) async {
    final String sql = 'CREATE TABLE ${table} (id INTEGER PRIMARY KEY, $username TEXT, $password TEXT)';
    await db.execute(sql);
  }

  // CREATE operation
  Future<int> insert(Map<String, dynamic> row) async {
    Database db = await database();
    return await db.insert(table, row);
  }

  // READ operation
  Future<List<Map<String, dynamic>>> queryAll() async {
    Database db = await database();
    return await db.query(table);
  }

  // UPDATE operation
  Future<int> update(Map<String, dynamic> row) async {
    Database db = await database();
    int id = row[this.id];
    return await db.update(table, row, where: '$id = ?', whereArgs: [id]);
  }

  // DELETE operation
  Future<int> delete(int id) async {
    Database db = await database();
    return await db.delete(table, where: '$id = ?', whereArgs: [id]);
  }
}
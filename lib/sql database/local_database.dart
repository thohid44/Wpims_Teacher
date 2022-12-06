import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:wpims_teacher/model/todo_model.dart';
class DatabaseHelper{
  DatabaseHelper._privateConstructor();

  static final DatabaseHelper instance = DatabaseHelper._privateConstructor(); 
 static Database? _database; 
  Future<Database> get database async => _database ??= await _initDatabase();
  Future<Database> _initDatabase() async{
    Directory documentDirectory = await getApplicationDocumentsDirectory(); 
    String path = join(documentDirectory.path,'wpims.db'); 
    return await openDatabase(path, version: 1, onCreate: _onCreate); 
  }

  Future _onCreate(Database db, int version) async{
   await db.execute(
    """
CREATE TABLE attendence(
  id INTEGER PRIMAY KEY, 
  stdId INTEGER NOT NULL UNQUE, 
  title TEXT
)
"""
   );
  }

  Future<int> addTools(Todo todo) async{
    Database db = await instance.database;
    return await db.insert("todo",todo.toJson());
  }
}
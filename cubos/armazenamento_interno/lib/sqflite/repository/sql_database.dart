import 'dart:async';

import 'package:armazenamento_interno/sqflite/repository/star_model.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class SQLDatabase {
  static final SQLDatabase _instance = SQLDatabase._();

  SQLDatabase._();

  factory SQLDatabase() => _instance;

  late Database db;
  Future<void> init() async {
    try {
      db = await openDatabase(
        join(await getDatabasesPath(), 'star_database.db'),
        onCreate: (db, version) {
          return db.execute(
            'CREATE TABLE stars(id INTEGER PRIMARY KEY, title TEXT, hdurl TEXT, explanation TEXT)',
          );
        },
        version: 1,
      );
    } catch (e) {
      print(e);
    }
  }

  Future<void> insertStar(StarModel star) async {
    try {
      await db.insert(
        'stars',
        star.toJson(),
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    } catch (e) {
      print(e);
    }
  }

  Future<List<StarModel>> getStars() async {
    try {
      final response = await db.query('stars');

      final starList = List<Map<String, dynamic>>.from(response)
          .map((json) => StarModel.fromJson(json, json['id']))
          .toList();

      return starList;
    } catch (e) {
      print(e);
      return <StarModel>[];
    }
  }

  Future<void> updateStar(StarModel star) async {
    try {
      await db.update(
        'stars',
        star.toJson(),
        where: 'title = ?',
        whereArgs: [star.title],
      );
    } catch (e) {
      print(e);
    }
  }

  Future<void> deleteStar(title) async {
    try {
      await db.delete(
        'stars',
        where: 'title = ?',
        whereArgs: [title],
      );
    } catch (e) {
      print(e);
    }
  }
}

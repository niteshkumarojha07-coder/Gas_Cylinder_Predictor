import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  static Database? _database;

  factory DatabaseHelper() {
    return _instance;
  }

  DatabaseHelper._internal();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    String path = join(await getDatabasesPath(), 'cylinder.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) {
        return db.execute(
          '''
          CREATE TABLE cylinders(
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            name TEXT,
            weight REAL
          )
          '''
        );
      },
    );
  }

  Future<void> insertCylinder(Map<String, Object> cylinder) async {
    final db = await database;
    await db.insert(
      'cylinders',
      cylinder,
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<Map<String, dynamic>>> getCylinders() async {
    final db = await database;
    return await db.query('cylinders');
  }

  Future<void> updateCylinder(int id, Map<String, Object> cylinder) async {
    final db = await database;
    await db.update(
      'cylinders',
      cylinder,
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  Future<void> deleteCylinder(int id) async {
    final db = await database;
    await db.delete(
      'cylinders',
      where: 'id = ?',
      whereArgs: [id],
    );
  }
}
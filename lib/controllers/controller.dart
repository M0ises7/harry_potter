import 'package:harry_potter/models/character_model.dart';

import '../database/database.dart';

class CharacterController {
  static Future<AppDataBase> initDb() async {
    return await $FloorAppDataBase.databaseBuilder('app_database.db').build();
  }

  static Future<void> insertCharacter(Character character) async {
    final db = await initDb();
    await db.characterDao.insertCharacter(character);
  }

  static Future<List<Character>> get allCharacters async {
    final db = await initDb();
    return await db.characterDao.findAllCharacters();
  }

  static Future<Character?> findCharacterById(String id) async {
    final db = await initDb();
    // Aquí usamos firstWhere porque findCharacterById devuelve un Stream
    return db.characterDao
        .findCharacterById(id)
        .firstWhere((_) => true, orElse: () => null);
  }

  static Future<void> updateCharacter(Character character) async {
    final db = await initDb();
    await db.characterDao.updateCharacter(character);
  }

  static Future<void> deleteCharacter(Character character) async {
    final db = await initDb();
    await db.characterDao.deleteCharacter(character);
  }

  static Future<void> deleteAllCharacter() async {
    final db = await initDb();
    final result = await db.characterDao.deleteAllCharacter();
        return result;

  }
}


import 'dart:async';
import 'package:floor/floor.dart';
import 'package:harry_potter/dao/character_dao.dart';
import 'package:harry_potter/models/character_model.dart';
import 'package:harry_potter/utils/stirng_list_converter.dart';
import 'package:harry_potter/utils/wand_converter.dart';
import 'package:sqflite/sqflite.dart' as sqflite;



part 'database.g.dart';
@TypeConverters([StringListConverter, WandConverter])
@Database(version: 1, entities: [Character,Wand])
abstract class AppDataBase extends FloorDatabase {
  CharacterDao get characterDao;
}

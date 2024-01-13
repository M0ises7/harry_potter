
import 'package:floor/floor.dart';
import 'package:harry_potter/models/character_model.dart';

@dao
abstract class CharacterDao {
  @Query('SELECT * FROM Character')
  Future<List<Character>> findAllCharacters();

  @Query('SELECT * FROM Character WHERE id = :id')
  Stream<Character?> findCharacterById(String id);

  @insert
  Future<void> insertCharacter(Character character);

  @update
  Future<void> updateCharacter(Character character);

  @delete
  Future<void> deleteCharacter(Character character);
}


import 'package:harry_potter/controllers/controller.dart';
import 'package:harry_potter/models/character_model.dart';
import 'package:harry_potter/services/api_services.dart';
import 'package:harry_potter/utils/calculate_year_of_birth.dart';
import 'package:mobx/mobx.dart';


part 'home_view_model.g.dart';
// ignore: library_private_types_in_public_api
class HomeViewModel = _HomeViewModel with _$HomeViewModel;


abstract class _HomeViewModel  with Store {
@observable
List<Character> observerCharacters = ObservableList<Character>.of([]);

@action
Future<void> setAsyncCharacters() async {
  try {
    observerCharacters = await CharacterController.allCharacters;
  } catch (e) {
    observerCharacters = [];
  }
}
@action
Future<void> updateCharactersFromApi() async {
  try {
    List<Character> charactersFromApi = await ApiService().fetchCharacters();
    for (var character in charactersFromApi) {
      character.yearOfBirth = calculateYearOfBirth(character.dateOfBirth);
      await CharacterController.insertCharacter(character);
    }
    await setAsyncCharacters(); // Actualiza la lista observable
  } catch (e) {
    print("Error Actualizando personajes: $e");
  }
}
}
import 'dart:convert';
import 'package:harry_potter/models/character_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  Future<List<Character>> fetchCharacters() async {
    final response =
        await http.get(Uri.parse('https://hp-api.onrender.com/api/characters'));

    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);
      return data.map((json) => Character.fromJson(json)).toList();
    } else {
      throw Exception('Error al obtener datos de la api');
    }
  }
}

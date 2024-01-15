import 'dart:convert';
import 'package:floor/floor.dart';
//funciones para manejar listas en model, para el uso de floor 
class StringListConverter extends TypeConverter<List<String>, String> {
  @override
  List<String> decode(String databaseValue) {
    return (json.decode(databaseValue) as List<dynamic>).cast<String>();
  }

  @override
  String encode(List<String> value) {
    return json.encode(value);
  }
}

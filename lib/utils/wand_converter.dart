import 'dart:convert';
import 'package:floor/floor.dart';
import 'package:harry_potter/models/character_model.dart';

class WandConverter extends TypeConverter<Wand?, String?> {
  @override
  Wand? decode(String? databaseValue) {
    if (databaseValue == null) {
      return null;
    }
    return Wand.fromJson(json.decode(databaseValue));
  }

  @override
  String? encode(Wand? value) {
    if (value == null) {
      return null;
    }
    return json.encode(value.toJson());
  }
}

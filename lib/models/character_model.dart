import 'dart:convert';

import 'package:floor/floor.dart';
import 'package:harry_potter/utils/stirng_list_converter.dart';
import 'package:harry_potter/utils/wand_converter.dart';

@entity
class Character {
  @primaryKey
  String id;
  String name;
  @TypeConverters([StringListConverter])
  List<String> alternateNames;
  String species;
  String gender;
  String house;
  String dateOfBirth;
  int yearOfBirth;
  bool wizard;
  String ancestry;
  String eyeColour;
  String hairColour;
  @TypeConverters([WandConverter])
  final Wand? wand;
  String patronus;
  bool hogwartsStudent;
  bool hogwartsStaff;
  String actor;
  @TypeConverters([StringListConverter])
  List<String> alternateActors;
  bool alive;
  String image;

  Character({
    required this.id,
    required this.name,
    required this.alternateNames,
    required this.species,
    required this.gender,
    required this.house,
    required this.dateOfBirth,
    required this.yearOfBirth,
    required this.wizard,
    required this.ancestry,
    required this.eyeColour,
    required this.hairColour,
    required this.wand,
    required this.patronus,
    required this.hogwartsStudent,
    required this.hogwartsStaff,
    required this.actor,
    required this.alternateActors,
    required this.alive,
    required this.image,
  });

  Character copyWith({
    String? id,
    String? name,
    List<String>? alternateNames,
    String? species,
    String? gender,
    String? house,
    String? dateOfBirth,
    int? yearOfBirth,
    bool? wizard,
    String? ancestry,
    String? eyeColour,
    String? hairColour,
    Wand? wand,
    String? patronus,
    bool? hogwartsStudent,
    bool? hogwartsStaff,
    String? actor,
    List<String>? alternateActors,
    bool? alive,
    String? image,
  }) =>
      Character(
        id: id ?? this.id,
        name: name ?? this.name,
        alternateNames: alternateNames ?? this.alternateNames,
        species: species ?? this.species,
        gender: gender ?? this.gender,
        house: house ?? this.house,
        dateOfBirth: dateOfBirth ?? this.dateOfBirth,
        yearOfBirth: yearOfBirth ?? this.yearOfBirth,
        wizard: wizard ?? this.wizard,
        ancestry: ancestry ?? this.ancestry,
        eyeColour: eyeColour ?? this.eyeColour,
        hairColour: hairColour ?? this.hairColour,
        wand: wand ?? this.wand,
        patronus: patronus ?? this.patronus,
        hogwartsStudent: hogwartsStudent ?? this.hogwartsStudent,
        hogwartsStaff: hogwartsStaff ?? this.hogwartsStaff,
        actor: actor ?? this.actor,
        alternateActors: alternateActors ?? this.alternateActors,
        alive: alive ?? this.alive,
        image: image ?? this.image,
      );

  factory Character.fromRawJson(String str) =>
      Character.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Character.fromJson(Map<String, dynamic> json) => Character(
        id: json["id"],
        name: json["name"],
        alternateNames: json["alternate_names"] == null
            ? []
            : List<String>.from(json["alternate_names"]!.map((x) => x)),
        species: json["species"],
        gender: json["gender"],
        house: json["house"],
        dateOfBirth: json["dateOfBirth"],
        yearOfBirth: json["yearOfBirth"],
        wizard: json["wizard"],
        ancestry: json["ancestry"],
        eyeColour: json["eyeColour"],
        hairColour: json["hairColour"],
        wand: json["wand"] != null ? Wand.fromJson(json["wand"]) : null,
        patronus: json["patronus"],
        hogwartsStudent: json["hogwartsStudent"],
        hogwartsStaff: json["hogwartsStaff"],
        actor: json["actor"],
        alternateActors: json["alternate_actors"] == null
            ? []
            : List<String>.from(json["alternate_actors"]!.map((x) => x)),
        alive: json["alive"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "alternate_names": alternateNames == null
            ? []
            : List<dynamic>.from(alternateNames!.map((x) => x)),
        "species": species,
        "gender": gender,
        "house": house,
        "dateOfBirth": dateOfBirth,
        "yearOfBirth": yearOfBirth,
        "wizard": wizard,
        "ancestry": ancestry,
        "eyeColour": eyeColour,
        "hairColour": hairColour,
        "wand": wand?.toJson(),
        "patronus": patronus,
        "hogwartsStudent": hogwartsStudent,
        "hogwartsStaff": hogwartsStaff,
        "actor": actor,
        "alternate_actors": alternateActors == null
            ? []
            : List<dynamic>.from(alternateActors!.map((x) => x)),
        "alive": alive,
        "image": image,
      };
}

class Wand {
  int id;
  String wood;
  String core;
  double length;

  Wand({
    required this.id,
    required this.wood,
    required this.core,
    required this.length,
  });

  Wand copyWith({
    int? id,
    String? wood,
    String? core,
    double? length,
  }) =>
      Wand(
        id: id ?? this.id,
        wood: wood ?? this.wood,
        core: core ?? this.core,
        length: length ?? this.length,
      );

  factory Wand.fromRawJson(String str) => Wand.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Wand.fromJson(Map<String, dynamic> json) => Wand(
        id: json["id"],
        wood: json["wood"],
        core: json["core"],
        length: json["length"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "wood": wood,
        "core": core,
        "length": length,
      };
}

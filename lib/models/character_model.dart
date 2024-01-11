class Character {
  String id;
  String name;
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
  Wand wand;
  String patronus;
  bool hogwartsStudent;
  bool hogwartsStaff;
  String actor;
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


}

class Wand {
  String wood;
  String core;
  double length;

  Wand({
    required this.wood,
    required this.core,
    required this.length,
  });

 
}

import 'package:flutter/material.dart';
import 'package:harry_potter/models/character_model.dart';

class CharacterDetailView extends StatelessWidget {
  final Character character;

  const CharacterDetailView({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(character.name),
        backgroundColor: Colors.orange,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    'assets/fondo.jpg',
                    width: double.infinity,
                    height: 240,
                    fit: BoxFit.fill,
                  ),
                  character.image != ""
                      ? Positioned(
                          top: 80,
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage: NetworkImage(character.image),
                            backgroundColor: Colors.transparent,
                          ),
                        )
                      : Positioned(
                          top: 80,
                          child: CircleAvatar(
                            backgroundColor: Colors.transparent,
                            radius: 50,
                            child: Image.asset("assets/hogwarts.png"),
                          ),
                        ),
                  Positioned(
                    top: 200,
                    child: Text(
                      character.name,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Chip(
                    avatar: const CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(Icons.pets),
                    ),
                    label: Text(character.species),
                  ),
                  const SizedBox(width: 10),
                  Chip(
                    avatar: const CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(Icons.wc),
                    ),
                    label: Text(character.gender),
                  ),
                  const SizedBox(width: 10),
                  Chip(
                    avatar: const CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(Icons.school),
                    ),
                    label: Text(character.house),
                  ),
                ],
              ),
              character.wand != null
                  ? Text(
                      'Varita magica: ${character.wand!.wood}, ${character.wand!.core}, ${character.wand!.length} pulgadas')
                  : const Text('Varita: Desconocida'),
              const Divider(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _InfoColumn(
                        number: character.dateOfBirth,
                        label: 'Fecha de nacimiento'),
                    _InfoColumn(
                        number: character.yearOfBirth?.toString() ?? 'Unknown',
                        label: 'Año de nacimiento'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text('Actor: ${character.actor}'),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

class _InfoColumn extends StatelessWidget {
  final String number;
  final String label;

  const _InfoColumn({required this.number, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          number,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(label),
      ],
    );
  }
}

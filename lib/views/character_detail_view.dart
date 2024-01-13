import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:harry_potter/models/character_model.dart';

class CharacterDetailView extends StatefulWidget {
    final Character character;
   CharacterDetailView({super.key, required this.character});

  @override
  State<CharacterDetailView> createState() => _CharacterDetailViewState();
}

class _CharacterDetailViewState extends State<CharacterDetailView> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
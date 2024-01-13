import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:harry_potter/view_model/home_view_model.dart';
import 'package:harry_potter/views/character_detail_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
    final HomeViewModel hommeViewModel = HomeViewModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Center(child: Text('Personajes')),
         actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              hommeViewModel.updateCharactersFromApi();
            },
          ),
        ],
      ),
      
      body: Observer(
        builder: (_) => ListView.builder(
          itemCount: hommeViewModel.observerCharacters.length,
          itemBuilder: (context, index) {
            var character = hommeViewModel.observerCharacters[index];
            return ListTile(
              leading: Image.network(character.image),
              title: Text(character.name),
              subtitle: Text(character.gender),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CharacterDetailView( character:  character),
                  ), 
                );
              },
            );
          },
        ),
      ),
    );
  }
}
import 'package:elegant_notification/elegant_notification.dart';
import 'package:elegant_notification/resources/arrays.dart';
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
  final homeViewModel = HomeViewModel();
  final TextEditingController searchController = TextEditingController();
  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

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
              homeViewModel.updateCharactersFromApi();
              if (!homeViewModel.isLoading) {
                ElegantNotification.success(
                  width: 360,
                  position: Alignment.topCenter,
                  animation: AnimationType.fromTop,
                  title: const Text('Listo'),
                  description: const Text('Actualización correcta'),
                  onDismiss: () {},
                ).show(context);
              }
            },
          ),
        ],
      ),
      body: Stack(
        children: [ SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: const InputDecoration(
                    labelText: 'Buscar',
                    suffixIcon: Icon(Icons.search),
                  ),
                  onChanged: (value) => homeViewModel.setSearchText(value),
                ),
              ),
              Observer(
                builder: (_) {
                  if (!homeViewModel.hasUpdated) {
                    return const Center(
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 60),
                            child: Image(
                              image: AssetImage('assets/home.png'),
                              width: 380,
                              height: 360,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                                "Sin registros, favor toca el boton para obtener los datos",
                                style: TextStyle(fontSize: 20),
                                overflow: TextOverflow.clip),
                          ),
                        ],
                      ),
                    );
                  }
                  return Observer(builder: (_) {
                      if (homeViewModel.isLoading) {
              // Esto coloca el CircularProgressIndicator en el centro y sobre los otros widgets.
              return Container(
                color: Colors.black.withOpacity(0.5), // fondo semi-transparente
                child: const Center(child:  CircularProgressIndicator()),
              );
            }
                    return ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: homeViewModel.filteredCharacters.length,
                      itemBuilder: (context, index) {
                        var character = homeViewModel.filteredCharacters[index];
                        return ListTile(
                          leading: character.image.isNotEmpty
                              ? Image.network(character.image)
                              : const Image(
                                  image: AssetImage('assets/hogwarts.png'),
                                ),
                          title: Text(character.name),
                          subtitle: Text(character.gender),
                          trailing: Text(character.species),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    CharacterDetailView(character: character),
                              ),
                            );
                          },
                        );
                      },
                    );
                  });
                },
              )
            ],
          ),
        ),]
      ),
    );
  }
}

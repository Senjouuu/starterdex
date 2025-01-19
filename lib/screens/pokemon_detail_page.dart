import 'package:flutter/material.dart';
import 'package:pokedex_app/models/pokemon.dart';

class PokemonDetailPage extends StatelessWidget {
  final Pokemon pokemon;

  PokemonDetailPage({required this.pokemon});

  @override
  Widget build(BuildContext context) {
    Color infoBoxColor;
    if (pokemon.type.contains('Grass')) {
      infoBoxColor = Colors.lightGreen.shade100;
    } else if (pokemon.type.contains('Fire')) {
      infoBoxColor = Colors.red.shade100;
    } else if (pokemon.type.contains('Water')) {
      infoBoxColor = Colors.blue.shade100;
    } else {
      infoBoxColor = Colors.grey.shade200;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(pokemon.name),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 250,
                  height: 250,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey.shade300,
                    border: Border.all(
                      color: Colors.black,
                      width: 2.0,
                    ),
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      pokemon.imagePath,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 16.0),
                Container(
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: infoBoxColor,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '${pokemon.entry}',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontStyle: FontStyle.italic, // Italic font
                          color: Colors.grey[600],
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 16.0),
                      Text(
                        '${pokemon.name}',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[700],
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        '${pokemon.type}',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.grey[700],
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'Ability: ${pokemon.ability}',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.grey[600],
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 16.0),
                      _buildEvolutionLine(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildEvolutionLine() {
    if (pokemon.evolutions.isEmpty) {
      return SizedBox.shrink();
    }

    return Container(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Evolution Line',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: Colors.grey[700],
            ),
          ),
          SizedBox(height: 8.0),
          Container(
            height: 200.0, // Adjust height to fit images
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: pokemon.evolutions.map((evolutionPath) {
                // Find index to create labels
                int index = pokemon.evolutions.indexOf(evolutionPath);
                String label = index == 0 ? "Base Form" : "Evolution ${index}";

                return Container(
                  width: 120.0,
                  margin: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Center(
                          child: CircleAvatar(
                            radius: 45.0,
                            backgroundImage: AssetImage(evolutionPath),
                            backgroundColor: Colors.grey.shade200,
                          ),
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        label,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic, // Italic font
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}







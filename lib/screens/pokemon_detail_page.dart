import 'package:flutter/material.dart';
import 'package:pokedex_app/models/pokemon.dart';

class PokemonDetailPage extends StatelessWidget {
  final Pokemon pokemon;

  PokemonDetailPage({required this.pokemon});

  final Map<String, Color> typeColors = {
    'NORMAL': Color(0xFFA8A878),
    'FIRE': Color(0xFFF08030),
    'WATER': Color(0xFF6890F0),
    'ELECTRIC': Color(0xFFF8D030),
    'GRASS': Color(0xFF78C850),
    'ICE': Color(0xFF98D8D8),
    'FIGHTING': Color(0xFFC03028),
    'POISON': Color(0xFFA040A0),
    'GROUND': Color(0xFFE0C068),
    'FLYING': Color(0xFFA890F0),
    'PSYCHIC': Color(0xFFF85888),
    'BUG': Color(0xFFA8B820),
    'ROCK': Color(0xFFB8A038),
    'GHOST': Color(0xFF705898),
    'DRAGON': Color(0xFF7038F8),
    'DARK': Color(0xFF705848),
    'STEEL': Color(0xFFB8B8D0),
    'FAIRY': Color(0xFFEE99AC),
  };

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

    final Color primaryTextColor = Colors.grey[700]!;
    final Color secondaryTextColor = Colors.grey[600]!;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF38598C),
        title: Text(
          pokemon.name,
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: IconThemeData(color: Colors.white),
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
                        pokemon.entry,
                        style: TextStyle(
                          fontSize: 16.0,
                          fontStyle: FontStyle.italic,
                          color: secondaryTextColor,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 16.0),
                      Text(
                        pokemon.name,
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color: primaryTextColor,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 8.0),
                      Wrap(
                        alignment: WrapAlignment.center,
                        spacing: 6,
                        children: pokemon.type.split('/').map((type) {
                          return Text(
                            type,
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: typeColors[type.toUpperCase()] ?? primaryTextColor,
                            ),
                          );
                        }).toList(),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'Ability: ${pokemon.ability}',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: secondaryTextColor,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 16.0),
                      _buildBaseStats(pokemon, primaryTextColor, secondaryTextColor),
                      SizedBox(height: 16.0),
                      _buildEvolutionLine(primaryTextColor),
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

  Widget _buildBaseStats(Pokemon pokemon, Color titleColor, Color labelColor) {
    Map<String, int> stats = {
      'HP': pokemon.hp,
      'Attack': pokemon.attack,
      'Defense': pokemon.defense,
      'Sp. Atk': pokemon.spAtk,
      'Sp. Def': pokemon.spDef,
      'Speed': pokemon.speed,
    };

    int maxStatValue = 100;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Base Stats',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: titleColor,
          ),
        ),
        SizedBox(height: 8),
        ...stats.entries.map((entry) {
          double percent = entry.value / maxStatValue;

          Color barColor;
          if (entry.value < 60) {
            barColor = Colors.orange.shade700;
          } else if (entry.value < 100) {
            barColor = Colors.yellow.shade700;
          } else {
            barColor = Colors.green.shade700;
          }

          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: Row(
              children: [
                SizedBox(
                  width: 80,
                  child: Text(
                    entry.key,
                    style: TextStyle(fontSize: 14, color: labelColor),
                  ),
                ),
                SizedBox(width: 8),
                SizedBox(
                  width: 28,
                  child: Text(
                    '${entry.value}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: labelColor,
                    ),
                    textAlign: TextAlign.right,
                  ),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: Stack(
                    children: [
                      Container(
                        height: 10,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      FractionallySizedBox(
                        widthFactor: percent.clamp(0.0, 1.0),
                        child: Container(
                          height: 10,
                          decoration: BoxDecoration(
                            color: barColor,
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ],
    );
  }

  Widget _buildEvolutionLine(Color textColor) {
    if (pokemon.evolutions.isEmpty) {
      return SizedBox.shrink();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Evolution Line',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            color: textColor,
          ),
        ),
        SizedBox(height: 8.0),
        SizedBox(
          height: 200.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: pokemon.evolutions.map((evolutionPath) {
              int index = pokemon.evolutions.indexOf(evolutionPath);
              String label = index == 0 ? "Base Form" : "Evolution $index";

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
                        fontStyle: FontStyle.italic,
                        color: textColor,
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}

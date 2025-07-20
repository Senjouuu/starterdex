import 'package:flutter/material.dart';

class TypeEffectsScreen extends StatefulWidget {
  @override
  _TypeEffectsScreenState createState() => _TypeEffectsScreenState();
}

class _TypeEffectsScreenState extends State<TypeEffectsScreen> {
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

  final Map<String, List<String>> typeAdvantages = {
    'NORMAL': ['None'],
    'FIRE': ['Grass', 'Ice', 'Bug', 'Steel', 'Fairy'],
    'WATER': ['Fire', 'Ground', 'Rock'],
    'ELECTRIC': ['Water', 'Flying'],
    'GRASS': ['Water', 'Ground', 'Rock'],
    'ICE': ['Grass', 'Ground', 'Flying', 'Dragon'],
    'FIGHTING': ['Normal', 'Ice', 'Rock', 'Dark', 'Steel'],
    'POISON': ['Grass', 'Fairy'],
    'GROUND': ['Fire', 'Electric', 'Rock', 'Steel'],
    'FLYING': ['Grass', 'Fighting', 'Bug'],
    'PSYCHIC': ['Fighting', 'Psychic'],
    'BUG': ['Grass', 'Psychic', 'Dark'],
    'ROCK': ['Fire', 'Ice', 'Flying', 'Bug'],
    'GHOST': ['Ghost', 'Psychic'],
    'DRAGON': ['Dragon'],
    'DARK': ['Ghost', 'Psychic'],
    'STEEL': ['Ice', 'Rock', 'Fairy'],
    'FAIRY': ['Fighting', 'Bug', 'Dark'],
  };

  final Map<String, List<String>> typeDisadvantages = {
    'NORMAL': ['Rock', 'Steel'],
    'FIRE': ['Water', 'Rock', 'Fire'],
    'WATER': ['Electric', 'Grass'],
    'ELECTRIC': ['Ground'],
    'GRASS': ['Fire', 'Flying', 'Bug', 'Poison', 'Steel'],
    'ICE': ['Fire', 'Rock', 'Steel'],
    'FIGHTING': ['Flying', 'Psychic', 'Fairy'],
    'POISON': ['Ground', 'Psychic'],
    'GROUND': ['Water', 'Grass', 'Ice'],
    'FLYING': ['Electric', 'Rock'],
    'PSYCHIC': ['Bug', 'Ghost', 'Dark'],
    'BUG': ['Fire', 'Flying', 'Rock'],
    'ROCK': ['Water', 'Grass', 'Fighting', 'Steel'],
    'GHOST': ['Ghost', 'Dark'],
    'DRAGON': ['Ice', 'Dragon', 'Fairy'],
    'DARK': ['Fighting', 'Bug', 'Fairy'],
    'STEEL': ['Fire', 'Fighting', 'Ground'],
    'FAIRY': ['Poison', 'Steel'],
  };

  String? selectedType;

  List<Widget> buildColoredTypes(List<String>? types) {
    if (types == null || types.isEmpty || (types.length == 1 && types[0] == 'None')) {
      return [Text('None')];
    }

    return types.map((type) {
      final upperType = type.toUpperCase();
      return Padding(
        padding: const EdgeInsets.only(right: 6, bottom: 4),
        child: Text(
          type,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
            fontStyle: FontStyle.italic,
            color: typeColors[upperType] ?? Colors.grey,
          ),
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Type Effectiveness'),
      ),
      body: Column(
        children: [
          Flexible(
            flex: 2,
            child: GridView.builder(
              padding: EdgeInsets.all(8),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
              ),
              itemCount: typeColors.keys.length,
              itemBuilder: (context, index) {
                String type = typeColors.keys.elementAt(index);
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedType = type;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: typeColors[type],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        type,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Flexible(
            flex: 1,
            child: selectedType == null
                ? Center(child: Text('Select a type to see details'))
                : Container(
                    color: typeColors[selectedType],
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      color: Colors.white.withOpacity(0.8),
                      elevation: 4.0,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Type: $selectedType',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.italic,
                                      color: Color.fromARGB(255, 95, 95, 95),
                                    ),
                                  ),
                                  SizedBox(height: 12),
                                  Text(
                                    'Advantages:',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.italic,
                                      color: Color.fromARGB(255, 95, 95, 95),
                                    ),
                                  ),
                                  Wrap(
                                    children: buildColoredTypes(typeAdvantages[selectedType]),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 16),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Disadvantages:',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.italic,
                                      color: Color.fromARGB(255, 95, 95, 95),
                                    ),
                                  ),
                                  Wrap(
                                    children: buildColoredTypes(typeDisadvantages[selectedType]),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}

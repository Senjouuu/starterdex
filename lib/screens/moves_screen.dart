import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pokedex_app/models/move.dart'; // Make sure this path is correct

class MoveListScreen extends StatefulWidget {
  @override
  _MoveListScreenState createState() => _MoveListScreenState();
}

class _MoveListScreenState extends State<MoveListScreen> {
  List<Move> _moves = [];
  List<Move> _filteredMoves = [];
  bool _isSearching = false;
  TextEditingController _searchController = TextEditingController();

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
  void initState() {
    super.initState();
    loadMoves();
    _searchController.addListener(_onSearchChanged);
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  Future<void> loadMoves() async {
    try {
      final String jsonString = await rootBundle.loadString('assets/moves.json');
      final List<dynamic> jsonData = json.decode(jsonString);
      setState(() {
        _moves = jsonData.map((e) => Move.fromJson(e)).toList();
        _filteredMoves = _moves;
      });
    } catch (e) {
      print('❌ Error loading moves.json: $e');
    }
  }

  void _onSearchChanged() {
    final query = _searchController.text.toLowerCase();
    setState(() {
      _filteredMoves = _moves.where((move) {
        return move.name.toLowerCase().contains(query);
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _isSearching
            ? TextField(
                controller: _searchController,
                autofocus: true,
                decoration: const InputDecoration(
                  hintText: 'Search moves...',
                  border: InputBorder.none,
                  hintStyle: TextStyle(color: Colors.white70),
                ),
                style: const TextStyle(color: Colors.white),
              )
            : const Text("Pokémon Moves", style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xFF38598C),
        iconTheme: const IconThemeData(color: Colors.white),
        actions: [
          IconButton(
            icon: Icon(_isSearching ? Icons.close : Icons.search),
            onPressed: () {
              setState(() {
                if (_isSearching) {
                  _searchController.clear();
                  _filteredMoves = _moves;
                }
                _isSearching = !_isSearching;
              });
            },
          ),
        ],
      ),
      body: _filteredMoves.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : ListView.separated(
              itemCount: _filteredMoves.length,
              separatorBuilder: (_, __) => const Divider(height: 1),
              itemBuilder: (context, index) {
                final move = _filteredMoves[index];
                final typeColor = typeColors[move.type.toUpperCase()] ?? Colors.black;

                return ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  title: Text(
                    move.name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: typeColor,
                    ),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${move.type} • ${move.category} • PP: ${move.pp}",
                        style: TextStyle(
                          fontSize: 14,
                          color: typeColor,
                        ),
                      ),
                      Text(
                        "Power: ${move.power?.toString() ?? "-"} • Accuracy: ${move.accuracy?.toString() ?? "-"}",
                        style: TextStyle(
                          fontSize: 13,
                          color: typeColor,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        margin: const EdgeInsets.only(top: 4),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          move.effect,
                          style: const TextStyle(
                            fontSize: 13,
                            fontStyle: FontStyle.italic,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
    );
  }
}

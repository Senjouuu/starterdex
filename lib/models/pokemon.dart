class Pokemon {
  final String name;
  final String imagePath;
  final String type;
  final String region;
  final String entry;
  final String ability;
  final String weakness;
  final List<String> evolutions;

  // NEW STATS
  final int hp;
  final int attack;
  final int defense;
  final int spAtk;
  final int spDef;
  final int speed;

  // Constructor
  Pokemon({
    required this.name,
    required this.imagePath,
    required this.type,
    required this.region,
    required this.entry,
    required this.ability,
    required this.weakness,
    required this.evolutions,
    required this.hp,
    required this.attack,
    required this.defense,
    required this.spAtk,
    required this.spDef,
    required this.speed,
  });

  // Factory method to create a Pokemon object from a JSON map
  factory Pokemon.fromJson(Map<String, dynamic> json) {
    return Pokemon(
      name: json['name'],
      imagePath: json['imagePath'],
      type: json['type'],
      region: json['region'],
      entry: json['entry'],
      ability: json['ability'],
      weakness: json['weakness'],
      evolutions: List<String>.from(json['evolutions'] ?? []),

      // NEW STATS
      hp: json['hp'] ?? 0,
      attack: json['attack'] ?? 0,
      defense: json['defense'] ?? 0,
      spAtk: json['spAtk'] ?? 0,
      spDef: json['spDef'] ?? 0,
      speed: json['speed'] ?? 0,
    );
  }

  // Method to convert Pokemon object to JSON
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'imagePath': imagePath,
      'type': type,
      'region': region,
      'entry': entry,
      'ability': ability,
      'weakness': weakness,
      'evolutions': evolutions,

      // NEW STATS
      'hp': hp,
      'attack': attack,
      'defense': defense,
      'spAtk': spAtk,
      'spDef': spDef,
      'speed': speed,
    };
  }
}

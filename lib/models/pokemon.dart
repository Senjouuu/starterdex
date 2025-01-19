class Pokemon {
  final String name;
  final String imagePath;
  final String type;
  final String region;
  final String entry;
  final String ability;
  final String weakness;
  final List<String> evolutions; // Add this property

  // Constructor
  Pokemon({
    required this.name,
    required this.imagePath,
    required this.type,
    required this.region,
    required this.entry,
    required this.ability,
    required this.weakness,
    required this.evolutions, // Update constructor
  });

  // Factory method to create a Pokemon object from a JSON map
  factory Pokemon.fromJson(Map<String, dynamic> json) {
    return Pokemon(
      name: json['name'],
      imagePath: json['imagePath'], // Ensure this key matches your API response
      type: json['type'],
      region: json['region'],
      entry: json['entry'],
      ability: json['ability'],
      weakness: json['weakness'],
      evolutions: List<String>.from(json['evolutions'] ?? []), // Handle evolutions
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
      'evolutions': evolutions, // Include evolutions
    };
  }
}


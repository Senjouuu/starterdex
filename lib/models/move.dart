class Move {
  final String name;
  final String type;
  final String category;
  final int? power;
  final int? accuracy;
  final int pp;
  final String effect;

  Move({
    required this.name,
    required this.type,
    required this.category,
    required this.pp,
    required this.effect,
    this.power,
    this.accuracy,
  });

  factory Move.fromJson(Map<String, dynamic> json) {
    // Helper function to parse int or return null
    int? parseNullableInt(dynamic value) {
      if (value is int) return value;
      if (value is String && value.trim() != '-' && int.tryParse(value) != null) {
        return int.parse(value);
      }
      return null;
    }

    return Move(
      name: json['name'] as String,
      type: json['type'] as String,
      category: json['category'] as String,
      power: parseNullableInt(json['power']),
      accuracy: parseNullableInt(json['accuracy']),
      pp: json['pp'] is int
          ? json['pp']
          : int.tryParse(json['pp'].toString()) ?? 0, // fallback
      effect: json['effect'] as String,
    );
  }

  // Optional: for display purposes
  String get powerDisplay => power?.toString() ?? '-';
  String get accuracyDisplay => accuracy?.toString() ?? '-';
}

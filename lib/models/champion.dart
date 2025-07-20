// lib/models/elite_four.dart
class EliteFour {
  final String name;
  final String type;

  EliteFour({required this.name, required this.type});

  factory EliteFour.fromJson(Map<String, dynamic> json) {
    return EliteFour(
      name: json['name'],
      type: json['type'],
    );
  }
}

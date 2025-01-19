import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'app.dart';  // Import your app.dart file

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeNotifier(ThemeData.light()),  // Default to light theme
      child: MyApp(),
    ),
  );
}

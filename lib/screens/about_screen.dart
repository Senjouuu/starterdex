import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About', style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xFF38598C),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Card(
                color: Color(0xFFD7F3D6), // Light matte green
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'Attempt on making a Pokédex app using Flutter.\n\nThis app provides information on Pokémon including their types, moves, and evolutions.\n\n– Ozaeta, John Carlo C.',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.normal,
                      color: Colors.black87,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Positioned(
                top: -55,
                right: 1,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(16),
                    bottomLeft: Radius.circular(16),
                  ),
                  child: Image.asset(
                    'assets/images/bulbabout.jpg',
                    width: 105,
                    height: 65,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

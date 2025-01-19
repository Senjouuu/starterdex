import 'package:flutter/material.dart';

class MovesScreen extends StatelessWidget {
  final List<Map<String, dynamic>> starters = [
    {
      'name': 'Venusaur',
      'type': 'Grass',
      'image': 'assets/images/venusaur_sprite.jpg',
      'moves': ['Giga Drain', 'Razor Leaf', 'Leech Seed', 'Toxic'],
    },
    {
      'name': 'Charizard',
      'type': 'Fire',
      'image': 'assets/images/charizard_sprite.jpg',
      'moves': ['Flamethrower', 'Fly', 'Wing Attack', 'Iron tail'],
    },
    {
      'name': 'Blastoise',
      'type': 'Water',
      'image': 'assets/images/blastoise_sprite.jpg',
      'moves': ['Surf', 'Strength', 'Ice Beam', 'Bite'],
    },
    {
      'name': 'Meganium',
      'type': 'Grass',
      'image': 'assets/images/meganium_sprite.jpg',
      'moves': ['Petal Dance', 'Reflect', 'Light Screen', 'Body Slam'],
    },
    {
      'name': 'Typhlosion',
      'type': 'Fire',
      'image': 'assets/images/typhlosion_sprite.jpg',
      'moves': ['Lava Plume', 'Focus Blast', 'Flamethrower', 'Earthquake'],
    },
    {
      'name': 'Feraligatr',
      'type': 'Water',
      'image': 'assets/images/feraligatr_sprite.jpg',
      'moves': ['Waterfall', 'Surf', 'Ice Fang', 'Earthquake'],
    },
    {
      'name': 'Sceptile',
      'type': 'Grass',
      'image': 'assets/images/sceptile_sprite.jpg',
      'moves': ['Leaf Blade', 'Dragon Claw', 'Low Sweep', 'Earthquake'],
    },
    {
      'name': 'Blaziken',
      'type': 'Fire',
      'image': 'assets/images/blaziken_sprite.jpg',
      'moves': ['Blaze Kick', 'Low Sweep', 'Bulk Up', 'Earthquake'],
    },
    {
      'name': 'Swampert',
      'type': 'Water',
      'image': 'assets/images/swampert_sprite.jpg',
      'moves': ['Waterfall', 'Rain Dance', 'Ice Beam', 'Earthquake'],
    },
    {
      'name': 'Torterra',
      'type': 'Grass',
      'image': 'assets/images/torterra_sprite.jpg',
      'moves': ['Woodhammer', 'Crunch', 'Rock Slide', 'Earthquake'],
    },
    {
      'name': 'Infernape',
      'type': 'Fire',
      'image': 'assets/images/infernape_sprite.jpg',
      'moves': ['Flamethrower', 'Close Combat', 'U-Turn', 'Shadow Claw'],
    },
    {
      'name': 'Empoleon',
      'type': 'Water',
      'image': 'assets/images/empoleon_sprite.jpg',
      'moves': ['Flash Cannon', 'Surf', 'Ice Beam', 'Grass Knot'],
    },
    {
      'name': 'Serperior',
      'type': 'Grass',
      'image': 'assets/images/serperior_sprite.jpg',
      'moves': ['Leaf Blade', 'Giga Drain', 'Aerial Ace', 'Coil'],
    },
    {
      'name': 'Emboar',
      'type': 'Fire',
      'image': 'assets/images/emboar_sprite.jpg',
      'moves': ['Flamethrower', 'Hammer Arm', 'Scald', 'Rock Slide'],
    },
    {
      'name': 'Samurott',
      'type': 'Water',
      'image': 'assets/images/samurott_sprite.jpg',
      'moves': ['Aqua Tail', 'Surf', 'Megahord', 'Blizzard'],
    },
    {
      'name': 'Chesnaught',
      'type': 'Grass',
      'image': 'assets/images/chesnaught_sprite.jpg',
      'moves': ['Seed Bomb', 'Hammer Arm', 'Poison Jab', 'Spiky Shield'],
    },
    {
      'name': 'Delphox',
      'type': 'Fire',
      'image': 'assets/images/delphox_sprite.jpg',
      'moves': ['Flamethrower', 'Psychic', 'Shadow Ball', 'Grass Knot'],
    },
    {
      'name': 'Greninja',
      'type': 'Water',
      'image': 'assets/images/greninja_sprite.jpg',
      'moves': ['Night Slash', 'Surf', 'Ice Beam', 'Acrobatics'],
    },
    {
      'name': 'Decidueye',
      'type': 'Grass',
      'image': 'assets/images/decidueye_sprite.jpg',
      'moves': ['Spirit Shackle', 'Leaf Blade', 'Sucker Punch', 'Brave Bird'],
    },
    {
      'name': 'Incineroar',
      'type': 'Fire',
      'image': 'assets/images/incineroar_sprite.jpg',
      'moves': ['Darkest Lariat', 'Flare Blitz', 'Brick Break', 'U-Turn'],
    },
    {
      'name': 'Primarina',
      'type': 'Water',
      'image': 'assets/images/primarina_sprite.jpg',
      'moves': ['Sparkling Aria', 'Moonblast', 'Shadow Ball', 'Psychic'],
    },
    {
      'name': 'Rillaboom',
      'type': 'Grass',
      'image': 'assets/images/rillaboom_sprite.jpg',
      'moves': ['Drum Beating', 'Earthquake', 'Acrobatics', 'Assurance'],
    },
    {
      'name': 'Cinderace',
      'type': 'Fire',
      'image': 'assets/images/cinderace_sprite.jpg',
      'moves': ['Firepunch', 'Pyro Ball', 'U-Turn', 'Low Sweep'],
    },
    {
      'name': 'Inteleon',
      'type': 'Water',
      'image': 'assets/images/inteleon_sprite.jpg',
      'moves': ['Snipe Shot', 'Mud Shot', 'Ice Beam', '???'],
    },
    {
      'name': 'Meowscarada',
      'type': 'Grass',
      'image': 'assets/images/meowscarada_sprite.jpg',
      'moves': ['Flower Trick', 'Night Slash', 'Acrobatics', '???'],
    },
    {
      'name': 'Skeledirge',
      'type': 'Fire',
      'image': 'assets/images/skeledirge_sprite.jpg',
      'moves': ['Torch Song', 'Shadow Ball', 'Flamethrower', 'Earth Power'],
    },
    {
      'name': 'Quaquaval',
      'type': 'Water',
      'image': 'assets/images/quaquaval_sprite.jpg',
      'moves': ['Aqua Step', 'Close Combat', 'Ice Spinner', 'Acrobatics'],
    },
  ];

  final Map<String, Color> typeColors = {
    'Grass': Color(0xFF78C850),
    'Fire': Color(0xFFF08030),
    'Water': Color(0xFF6890F0),
  };

  final Map<String, Color> cardColors = {
    'Grass': Color(0xFFB9FBC0),
    'Fire': Color(0xFFFFD3D3),
    'Water': Color(0xFFC5D9F0),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Moves'),
      ),
      body: ListView.builder(
        itemCount: starters.length,
        itemBuilder: (context, index) {
          var starter = starters[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) => SlideUpPage(
                    image: starter['image'],
                    name: starter['name'],
                    moves: starter['moves'],
                    type: starter['type'],
                    cardColor: cardColors[starter['type']]!,
                  ),
                  transitionsBuilder: (context, animation, secondaryAnimation, child) {
                    const begin = Offset(0.0, 1.0);
                    const end = Offset.zero;
                    const curve = Curves.easeInOut;

                    var tween = Tween(begin: begin, end: end);
                    var offsetAnimation = animation.drive(tween.chain(CurveTween(curve: curve)));

                    return SlideTransition(position: offsetAnimation, child: child);
                  },
                ),
              );
            },
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Card(
                child: Row(
                  children: [
                    Container(
                      color: typeColors[starter['type']],
                      width: 8,
                      height: 100,
                    ),
                    Expanded(
                      child: ListTile(
                        leading: Image.asset(starter['image'], width: 50, height: 50),
                        title: Text(
                          starter['name'],
                          style: TextStyle(
                            color: Color.fromARGB(255, 95, 95, 95),
                            fontFamily: 'Gill Sans',
                          ),
                        ),
                        subtitle: Text(
                          'Moveset',
                          style: TextStyle(
                            color: Color.fromARGB(255, 95, 95, 95),
                            fontFamily: 'Gill Sans',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class SlideUpPage extends StatelessWidget {
  final String image;
  final String name;
  final List<String> moves;
  final String type;
  final Color cardColor;

  SlideUpPage({
    required this.image,
    required this.name,
    required this.moves,
    required this.type,
    required this.cardColor,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          name,
          style: TextStyle(
            color: Color.fromARGB(255, 95, 95, 95),
            fontFamily: 'Gill Sans',
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                child: Image.asset(image, width: 350, height: 350),
                margin: EdgeInsets.only(bottom: 16),
              ),
              ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: moves.map((move) {
                  return Card(
                    color: cardColor,
                    margin: EdgeInsets.symmetric(vertical: 4),
                    child: ListTile(
                      title: Text(
                        move,
                        style: TextStyle(
                          color: Color.fromARGB(255, 95, 95, 95),
                          fontFamily: 'Gill Sans',
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
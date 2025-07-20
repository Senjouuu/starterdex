import 'package:flutter/material.dart';

class ChampionScreen extends StatelessWidget {
  final List<Map<String, dynamic>> champions = [
    {
      'name': 'Blue',
      'region': 'Kanto',
      'battleLocation': 'Indigo Plateau',
      'image': 'assets/images/blue.jpg',
      'team': [
        {
          'name': 'Blastoise',
          'type': 'Water',
          'image': 'assets/images/blastoise.png',
          'level': 63,
          'ability': 'Torrent',
          'moves': ['Rain Dance', 'Hydro Pump', 'Skull Bash', 'Bite'],
          'item': 'Sitrus Berry'
        },
        {
          'name': 'Arcanine',
          'type': 'Fire',
          'image': 'assets/images/arcanine.png',
          'ability': 'Intimidate',
          'level': 59,
          'moves': ['Flamethrower', 'ExtremeSpeed', 'Roar', 'Bite'],
          'item': 'None'
        },
        {
          'name': 'Rhydon',
          'type': 'Rock/Ground',
          'image': 'assets/images/rhydon.png',
          'ability': 'Lightining Rod',
          'level': 59,
          'moves': ['Earthquake', 'Rock Tomb', 'Take Down', 'Scary Face'],
          'item': 'None'
        },
        {
          'name': 'Alakazam',
          'type': 'Psychic',
          'image': 'assets/images/alakazam.png',
          'ability': 'Synchronize',
          'level': 57,
          'moves': ['Psychic', 'Reflect', 'Future Sight', 'Recover'],
          'item': 'None'
        },
        {
          'name': 'Pidgeot',
          'type': 'Normal/Flying',
          'image': 'assets/images/pidgeot.png',
          'ability': 'Keen Eye',
          'level': 59,
          'moves': ['Aerial Ace', 'Feather Dance', 'Whirlwind', 'Sand Attack'],
          'item': 'None'
        },
        {
          'name': 'Exeggutor',
          'type': 'Grass/Psychic',
          'image': 'assets/images/exeggutor.png',
          'ability': 'Chlorophyll',
          'level': 62,
          'moves': ['Sleep Powder', 'Giga Drain', 'Light Screen', 'Egg Bomb'],
          'item': 'None'
        },

      ],
    },
    {
      'name': 'Lance',
      'region': 'Johto',
      'battleLocation': 'Indigo Plateau',
      'image': 'assets/images/lance.jpg',
      'team': [
        {
          'name': 'Dragonite',
          'type': 'Dragon/Flying',
          'image': 'assets/images/dragonite.png',
          'ability': 'Inner Focus',
          'level': 50,
          'moves': ['Outrage', 'Hyper Beam', 'Fire Blast', 'Safeguard'],
          'item': 'Sitrus Berry'
        },
        {
          'name': 'Dragonite',
          'type': 'Dragon/Flying',
          'image': 'assets/images/dragonite.png',
          'ability': 'Inner Focus',
          'level': 49,
          'moves': ['Dragon Rush', 'Thunder', 'Hyper Beam', 'Thunder'],
          'item': 'None'
        },
        {
          'name': 'Dragonite',
          'type': 'Dragon/Flying',
          'image': 'assets/images/dragonite.png',
          'ability': 'Inner Focus',
          'level': 49,
          'moves': ['Dragon Rush', 'Thunder', 'Hyper Beam', 'Blizzar'],
          'item': 'None'
        },
        {
          'name': 'Charizard',
          'type': 'Fire/Flying',
          'image': 'assets/images/charizard.png',
          'ability': 'Blaze',
          'level': 48,
          'moves': ['Air Slash', 'Fire Fang', 'Dragon Claw', 'Shadow Claw'],
          'item': 'None'
        },
        {
          'name': 'Aerodactyl',
          'type': 'Rock/Flying',
          'image': 'assets/images/aerodactyl.png',
          'ability': 'Pressure',
          'level': 48,
          'moves': ['Rock Slide', 'Aerial Ace', 'Crunch', 'Thunder Fang'],
          'item': 'None'
        },
        {
          'name': 'Gyarados',
          'type': 'Water/Flying',
          'image': 'assets/images/gyarados.png',
          'ability': 'Intimidate',
          'level': 46,
          'moves': ['Waterfall', 'Dragon Pulse', 'Ice Fang', 'Flail'],
          'item': 'None'
        },

      ],
    },
    {
      'name': 'Red',
      'region': 'Johto',
      'battleLocation': 'Mt. Silver',
      'image': 'assets/images/red.jpg',
      'team': [
        {
          'name': 'Pikachu',
          'type': 'Electric',
          'image': 'assets/images/pikachu.png',
          'ability': 'Static',
          'level': 88,
          'moves': ['Volt Tackle', 'Iron Tail', 'Thunder Bolt', 'Quick Attack'],
          'item': 'Light Ball'
        },
        {
          'name': 'Charizard',
          'type': 'Fire/Flying',
          'image': 'assets/images/charizard.png',
          'ability': 'Blaze',
          'level': 84,
          'moves': ['Blast Burn', 'Flare Blitz', 'Air Slash', 'Dragon Pulse'],
          'item': 'None'
        },
        {
          'name': 'Venusaur',
          'type': 'Grass/Poison',
          'image': 'assets/images/venusaur.png',
          'ability': 'Overgrow',
          'level': 84,
          'moves': ['Frenzy Plant', 'Giga Drain', 'Sludge Bomb', 'Sleep Powder'],
          'item': 'None'
        },
        {
          'name': 'Blastoise',
          'type': 'Water',
          'image': 'assets/images/blastoise.png',
          'ability': 'Torrent',
          'level': 84,
          'moves': ['Hydro Cannon', 'Blizzard', 'Flash Cannon', 'Focus Blast'],
          'item': 'None'
        },
        {
          'name': 'Snorlax',
          'type': 'Normal',
          'image': 'assets/images/snorlax.png',
          'ability': 'Thick Fat',
          'level': 82,
          'moves': ['Shadow Ball', 'Crunch', 'Blizzard', 'Giga Impact'],
          'item': 'None'
        },
        {
          'name': 'Lapras',
          'type': 'Water/Ice',
          'image': 'assets/images/lapras.png',
          'ability': 'Shell Armor',
          'level': 80,
          'moves': ['Body Slam', 'Brine', 'Blizzard', 'Psychic'],
          'item': 'None'
        },

      ],
    },
    {
      'name': 'Steven Stone',
      'region': 'Hoenn',
      'battleLocation': 'Pokémon League',
      'image': 'assets/images/steven.jpg',
      'team': [
        {
          'name': 'Metagross',
          'type': 'Steel/Psychic',
          'image': 'assets/images/metagross_mega.png',
          'ability': 'Clear Body',
          'level': 59,
          'moves': ['Bullet Punch', 'Zen Headbutt', 'Meteor Mash', 'Giga Impact'],
          'item': 'Metagrossite'
        },
        {
          'name': 'Skarmory',
          'type': 'Steel/Flying',
          'image': 'assets/images/skarmory.png',
          'ability': 'Sturdy',
          'level': 57,
          'moves': ['Toxic', 'Aerial Ace', 'Spikes', 'Steel Wing'],
          'item': 'None'
        },
        {
          'name': 'Aggron',
          'type': 'Steel/Rock',
          'image': 'assets/images/aggron.png',
          'ability': 'Sturdy',
          'level': 57,
          'moves': ['Stone Edge', 'Earthquake', 'Iron Tail', 'Dragon Claw'],
          'item': 'None'
        },
        {
          'name': 'Armaldo',
          'type': 'Rock/Bug',
          'image': 'assets/images/armaldo.png',
          'ability': 'Battle Armor',
          'level': 57,
          'moves': ['X-Scissor', 'Rock Blast', 'Metal Claw', 'Crush Claw'],
          'item': 'None'
        },
        {
          'name': 'Cradily',
          'type': 'Rock/Grass',
          'image': 'assets/images/cradily.png',
          'ability': 'Suction Cups',
          'level': 57,
          'moves': ['Giga Drain', 'Ancient Power', 'Sludge Bomb', 'Confuse Ray'],
          'item': 'None'
        },
        {
          'name': 'Claydol',
          'type': 'Ground/Psychic',
          'image': 'assets/images/claydol.png',
          'ability': 'Levitate',
          'level': 57,
          'moves': ['Reflect', 'Light Screen', 'Extrasensory', 'Earth Power'],
          'item': 'None'
        },

      ],
    },
    {
      'name': 'Wallace',
      'region': 'Hoenn',
      'battleLocation': 'Ever Grande City',
      'image': 'assets/images/wallace.jpg',
      'team': [
        {
          'name': 'Milotic',
          'type': 'Water',
          'image': 'assets/images/milotic.png',
          'ability': 'Marvel Scale',
          'level': 58,
          'moves': ['Recover', 'Surf', 'Ice Beam', 'Toxic'],
          'item': 'Sitrus Berry'
        },
        {
          'name': 'Wailord',
          'type': 'Water',
          'image': 'assets/images/wailord.png',
          'ability': 'Water Veil',
          'level': 57,
          'moves': ['Rain Dance', 'Water Spout', 'Blizzard', 'Double-Edge'],
          'item': 'None'
        },
        {
          'name': 'Gyarados',
          'type': 'Water/Flying',
          'image': 'assets/images/gyarados.png',
          'ability': 'Intimidate',
          'level': 56,
          'moves': ['Dragon Dance', 'Hyper Beam', 'Surf', 'Earthquake'],
          'item': 'None'
        },
        {
          'name': 'Ludicolo',
          'type': 'Water/Grass',
          'image': 'assets/images/ludicolo.png',
          'ability': 'Swift Swim',
          'level': 56,
          'moves': ['Rain Dance', 'Hydro Pump', 'Ice Beam', 'Earthquake'],
          'item': 'None'
        },
        {
          'name': 'Tentacruel',
          'type': 'Water/Poison',
          'image': 'assets/images/tentacruel.png',
          'ability': 'Clear Body',
          'level': 55,
          'moves': ['Toxic', 'Hydro Pump', 'Ice Beam', 'Sludge Bomb'],
          'item': 'None'
        },
        {
          'name': 'Whiscash',
          'type': 'Water/Ground',
          'image': 'assets/images/whiscash.png',
          'ability': 'Oblivious',
          'level': 56,
          'moves': ['Surf', 'Hyper Beam', 'Amnesia', 'Earthquake'],
          'item': 'None'
        },

      ],
    },
    {
      'name': 'Cynthia',
      'region': 'Sinnoh',
      'battleLocation': 'Pokémon League',
      'image': 'assets/images/cynthia.jpg',
      'team': [
        {
          'name': 'Garchomp',
          'type': 'Dragon/Ground',
          'image': 'assets/images/garchomp.png',
          'ability': 'Sand Veil',
          'level': 62,
          'moves': ['Dragon Rush', 'Flamethrower', 'Giga Impact', 'Earthquake'],
          'item': 'Sitrus Berry'
        },
        {
          'name': 'Lucario',
          'type': 'Fighting/Steel',
          'image': 'assets/images/lucario.png',
          'ability': 'Steadfast',
          'level': 60,
          'moves': ['Aura Sphere', 'Extremespeed', 'Shadow Ball', 'Stone Edge'],
          'item': 'None'
        },
        {
          'name': 'Togekiss',
          'type': 'Fairy/Flying',
          'image': 'assets/images/togekiss.png',
          'ability': 'Hustle',
          'level': 60,
          'moves': ['Air Slash', 'Aura Sphere', 'Water Pulse', 'Shock Wave'],
          'item': 'None'
        },
        {
          'name': 'Spiritomb',
          'type': 'Ghost/Dark',
          'image': 'assets/images/spiritomb.png',
          'ability': 'Pressure',
          'level': 58,
          'moves': ['Rain Dance', 'Hydro Pump', 'Ice Beam', 'Earthquake'],
          'item': 'None'
        },
        {
          'name': 'Milotic',
          'type': 'Water',
          'image': 'assets/images/milotic.png',
          'ability': 'Marvel Scale',
          'level': 58,
          'moves': ['Dark Pulse', 'Psychic', 'Silver Wind', 'Shadow Ball'],
          'item': 'None'
        },
        {
          'name': 'Roserade',
          'type': 'Grass/Poison',
          'image': 'assets/images/roserade.png',
          'ability': 'Natural Cure',
          'level': 58,
          'moves': ['Energy Ball', 'Sludge Bomb', 'Toxic', 'Extrasensory'],
          'item': 'None'
        },

      ],
    },
    {
      'name': 'Alder',
      'region': 'Unova',
      'battleLocation': 'Pokémon League',
      'image': 'assets/images/alder.jpg',
      'team': [
        {
          'name': 'Volcarona',
          'type': 'Bug/Fire',
          'image': 'assets/images/volcarona.png',
          'ability': 'Flame Body',
          'level': 77,
          'moves': ['Overheat', 'Bug Buzz', 'Quiver Dance', 'Hyper Beam'],
          'item': 'None'
        },
        {
          'name': 'Bouffalant',
          'type': 'Normal',
          'image': 'assets/images/bouffalant.png',
          'ability': 'Sap Sipper',
          'level': 75,
          'moves': ['Head Charge', 'Megahorn', 'Stone Edge', 'Earthquake'],
          'item': 'None'
        },
        {
          'name': 'Escavalier',
          'type': 'Bug/Steel',
          'image': 'assets/images/escavalier.png',
          'ability': 'Swarm',
          'level': 75,
          'moves': ['X-Scissor', 'Giga Impact', 'Aerial Ace', 'Iron Head'],
          'item': 'None'
        },
        {
          'name': 'Accelgor',
          'type': 'Bug',
          'image': 'assets/images/accelgor.png',
          'ability': 'Hydration',
          'level': 75,
          'moves': ['Bug Buzz', 'Focus Blast', 'Energy Ball', 'Me First'],
          'item': 'None'
        },
        {
          'name': 'Druddigon',
          'type': 'Dragon',
          'image': 'assets/images/druddigon.png',
          'ability': 'Rough Skin',
          'level': 75,
          'moves': ['Night Slash', 'Outrage', 'Superpower', 'Payback'],
          'item': 'None'
        },
        {
          'name': 'Vanilluxe',
          'type': 'Ice',
          'image': 'assets/images/vanilluxe.png',
          'ability': 'Ice Body',
          'level': 75,
          'moves': ['Blizzard', 'Light Screen', 'Flash Cannon', 'Acid Armor'],
          'item': 'None'
        },

      ],
    },
    {
      'name': 'Iris',
      'region': 'Unova',
      'battleLocation': 'Pokémon League',
      'image': 'assets/images/iris.jpg',
      'team': [
        {
          'name': 'Haxorus',
          'type': 'Dragon',
          'image': 'assets/images/haxorus.png',
          'ability': 'Mold Breaker',
          'level': 63,
          'moves': ['Dragon Dance', 'Outrage', 'X-Scissor', 'Earthquake'],
          'item': 'Focus Sash'
        },
        {
          'name': 'Hydreigon',
          'type': 'Dragon/Dark',
          'image': 'assets/images/hydreigon.png',
          'ability': 'Levitate',
          'level': 61,
          'moves': ['Fire Blast', 'Focus Blast', 'Dragon Pulse', 'Surf'],
          'item': 'Wise Glasses'
        },
        {
          'name': 'Druddigon',
          'type': 'Dragon',
          'image': 'assets/images/druddigon.png',
          'ability': 'Sheer Force',
          'level': 61,
          'moves': ['Fire Punch', 'Thunder Punch', 'Outrage', 'Focus Blast'],
          'item': 'Life Orb'
        },
        {
          'name': 'Archeops',
          'type': 'Rock/Flying',
          'image': 'assets/images/archeops.png',
          'ability': 'Defeatist',
          'level': 61,
          'moves': ['Acrobatics', 'Stone Edge', 'Dragon Claw', 'Endeavor'],
          'item': 'Flying Gem'
        },
        {
          'name': 'Aggron',
          'type': 'Steel/Rock',
          'image': 'assets/images/aggron.png',
          'ability': 'Rock Head',
          'level': 61,
          'moves': ['Head Smash', 'Double-Edge', 'Autotomize', 'Earthquake'],
          'item': 'Muscle Band'
        },
        {
          'name': 'Lapras',
          'type': 'Water/Ice',
          'image': 'assets/images/lapras.png',
          'ability': 'Water Absorb',
          'level': 61,
          'moves': ['Thunder', 'Hydro Pump', 'Blizzard', 'Sing'],
          'item': 'Wide Lens'
        },

      ],
    },
    {
      'name': 'Diantha',
      'region': 'Kalos',
      'battleLocation': 'Pokémon League',
      'image': 'assets/images/diantha.jpg',
      'team': [
        {
          'name': 'Gardevoir',
          'type': 'Psychic/Fairy',
          'image': 'assets/images/gardevoir_mega.png',
          'ability': 'Trace',
          'level': 68,
          'moves': ['Moon Blast', 'Psychic', 'Shadow Ball', 'Thunderbolt'],
          'item': 'Gardevoirite'
        },
        {
          'name': 'Goodra',
          'type': 'Dragon',
          'image': 'assets/images/goodra.png',
          'ability': 'Sap Sipper',
          'level': 66,
          'moves': ['Dragon Pulse', 'Muddy Watter', 'Fire Blast', 'Focus Blast'],
          'item': 'None'
        },
        {
          'name': 'Aurorus',
          'type': 'RockIce',
          'image': 'assets/images/aurorus.png',
          'ability': 'Refrigerate',
          'level': 65,
          'moves': ['Thunder', 'Blizzard', 'Light Screen', 'Reflect'],
          'item': 'None'
        },
        {
          'name': 'Tyrantrum',
          'type': 'Rock/Dragon',
          'image': 'assets/images/tyrantrum.png',
          'ability': 'Strong Jaw',
          'level': 65,
          'moves': ['Head Smash', 'Dragon Claw', 'Crunch', 'Earthquake'],
          'item': 'None'
        },
        {
          'name': 'Hawlucha',
          'type': 'Fighting/Flying',
          'image': 'assets/images/hawlucha.png',
          'ability': 'Limber',
          'level': 64,
          'moves': ['Swords Dance', 'Flying Press', 'X-Scissor', 'Poison Jab'],
          'item': 'None'
        },
        {
          'name': 'Gourgeist',
          'type': 'Ghost/Grass',
          'image': 'assets/images/gourgeist.png',
          'ability': 'Pickup',
          'level': 65,
          'moves': ['Phantom Force', 'Trick-or-Treat', 'Seed Bomb', 'Shadow Sneak'],
          'item': 'None'
        },

      ],
    },
    {
      'name': 'Professor Kukui',
      'region': 'Alola',
      'battleLocation': 'Pokémon League',
      'image': 'assets/images/kukui.jpg',
      'team': [
        {
          'name': 'Incineroar',
          'type': 'Fire/Dark',
          'image': 'assets/images/incineroar.png',
          'ability': 'Blaze',
          'level': 58,
          'moves': ['Darkest Lariat', 'Flare Blitz', 'Outrage', 'Cross Chop'],
          'item': 'Firium Z'
        },
        {
          'name': 'Lycanroc',
          'type': 'Rock',
          'image': 'assets/images/lycanroc.png',
          'ability': 'Keen Eye',
          'level': 57,
          'moves': ['Stone Edge', 'Accelerock', 'Crunch', 'Stealth Rock'],
          'item': 'None'
        },
        {
          'name': 'Braviary',
          'type': 'Normal/Flying',
          'image': 'assets/images/braviary.png',
          'ability': 'Keen Eye',
          'level': 56,
          'moves': ['Crush Claw', 'Brave Bird', 'Tailwind', 'Whirlwind'],
          'item': 'None'
        },
        {
          'name': 'Ninetales',
          'type': 'Ice',
          'image': 'assets/images/ninetales.png',
          'ability': 'Snow Cloak',
          'level': 56,
          'moves': ['Dazzling Gleam', 'Blizzard', 'Ice Shard', 'Safeguard'],
          'item': 'None'
        },
        {
          'name': 'Snorlax',
          'type': 'Normal',
          'image': 'assets/images/snorlax.png',
          'ability': 'Thick Fat',
          'level': 56,
          'moves': ['Body Slam', 'Crunch', 'Heavy Slam', 'High Horsepower'],
          'item': 'None'
        },
        {
          'name': 'Magnezone',
          'type': 'Electric/Steel',
          'image': 'assets/images/magnezone.png',
          'ability': 'Sturdy',
          'level': 56,
          'moves': ['Thunderbolt', 'Thunder Wave', 'Flash Cannon', 'Mirror Coat'],
          'item': 'None'
        },

      ],
    },
    {
      'name': 'Hau',
      'region': 'Alola',
      'battleLocation': 'Pokémon League',
      'image': 'assets/images/hau.jpg',
      'team': [
        {
          'name': 'Decidueye',
          'type': 'Grass/Ghost',
          'image': 'assets/images/decidueye.png',
          'ability': 'Overgrow',
          'level': 60,
          'moves': ['Spirit Shackle', 'Leaf Blade', 'Smack Down', '--'],
          'item': 'Grassium Z'
        },
        {
          'name': 'Raichu',
          'type': 'Electric/Fairy',
          'image': 'assets/images/raichu.png',
          'ability': 'Surge Surfe',
          'level': 59,
          'moves': ['Thunderbolt', 'Quick Attack', 'Psychic', 'Focus Blast'],
          'item': 'None'
        },
        {
          'name': 'Noivern',
          'type': 'Flying/Dragon',
          'image': 'assets/images/noivern.png',
          'ability': 'Infiltrator',
          'level': 58,
          'moves': ['Dragon Pulse', 'Air Slash', 'Dark Pulse', 'Super Fang'],
          'item': 'None'
        },
        {
          'name': 'Crabominable',
          'type': 'Fighting/Ice',
          'image': 'assets/images/crabominable.png',
          'ability': 'Iron Fist',
          'level': 59,
          'moves': ['Power-up Punch', 'Stone Edge', 'Ice Hammer', 'Dizzy Punch'],
          'item': 'None'
        },
        {
          'name': 'Vaporeon',
          'type': 'Water',
          'image': 'assets/images/vaporeon.png',
          'ability': 'Water Absorb',
          'level': 58,
          'moves': ['Quick Attack', 'Hydro Pump', 'Charm', 'Baby-Doll Eyes'],
          'item': 'None'
        },
        {
          'name': 'Tauros',
          'type': 'Normal',
          'image': 'assets/images/tauros.png',
          'ability': 'Intimidate',
          'level': 58,
          'moves': ['Zen Headbutt', 'Iron Head', 'Double Edge', 'Earthquake'],
          'item': 'Sitrus Berry'
        },

      ],
    },
    {
      'name': 'Leon',
      'region': 'Galar',
      'battleLocation': 'Wyndon Stadium',
      'image': 'assets/images/leon.jpg',
      'team': [
        {
          'name': 'Charizard',
          'type': 'Fire/Flying',
          'image': 'assets/images/charizard_gmax.png',
          'ability': 'Blaze',
          'level': 70,
          'moves': ['Fire Blast (G-Max Wildfire)', 'Air Slash (Max Airstream)', 'Solar Beam (Max Overgrowth)', 'Ancient Power (Max Rockfall)'],
          'item': 'None'
        },
        {
          'name': 'Dragapult',
          'type': 'Dragon/Ghost',
          'image': 'assets/images/dragapult.png',
          'ability': 'Clear Body',
          'level': 68,
          'moves': ['Shadow Ball', 'Flamethrower', 'Thunderbolt', 'Draco Meteor'],
          'item': 'None'
        },
        {
          'name': 'Mr. Rime',
          'type': 'Ice/Psychic',
          'image': 'assets/images/mrrime.png',
          'ability': 'Tangled Feet',
          'level': 69,
          'moves': ['Teeter Dance', 'Psychic', 'Freeze Dry', 'Thunderbolt'],
          'item': 'None'
        },
        {
          'name': 'Cinderace',
          'type': 'Fire',
          'image': 'assets/images/cinderace.png',
          'ability': 'Blaze',
          'level': 70,
          'moves': ['Pyro Ball', 'Feint', 'Acrobatics', 'Quick Attack'],
          'item': 'None'
        },
        {
          'name': 'Rillaboom',
          'type': 'Grass',
          'image': 'assets/images/rillaboom.png',
          'ability': 'Overgrow',
          'level': 70,
          'moves': ['Drum Beating', 'Knock Off', 'High Horsepower', 'Endeavor'],
          'item': 'None'
        },
        {
          'name': 'Inteleon',
          'type': 'Water',
          'image': 'assets/images/inteleon.png',
          'level': 70,
          'ability': 'Torrent',
          'moves': ['Snipe Shot', 'Dark Pulse', 'Mudshot', 'Tearful Look'],
          'item': 'None'
        },
        {
          'name': 'Aegislash',
          'type': 'Steel/Ghost',
          'image': 'assets/images/aegislash.png',
          'ability': 'Stance Change',
          'level': 70,
          'moves': ['Kings Shield', 'Shadow Ball', 'Sacred Sword', 'Steel Beam'],
          'item': 'None'
        },


      ],
    },
    {
      'name': 'Geeta',
      'region': 'Paldea',
      'battleLocation': 'Pokémon League',
      'image': 'assets/images/geeta.jpg',
      'team': [
        {
          'name': 'Glimmora',
          'type': 'Rock/Poison',
          'image': 'assets/images/glimmora.png',
          'ability': 'Toxic Debris',
          'level': 62,
          'moves': ['Tera Blast', 'Sludge Wave', 'Earth Power', 'Dazzling Gleam'],
          'item': 'None'
        },
        {
          'name': 'Kingambit',
          'type': 'Dark/Steel',
          'image': 'assets/images/kingambit.png',
          'ability': 'Supreme Overlord',
          'level': 61,
          'moves': ['Iron Head', 'Kowtow Cleave', 'Zen Headbutt', 'Stone Edge'],
          'item': 'None'
        },
        {
          'name': 'Espathra',
          'type': 'Psychic',
          'image': 'assets/images/espathra.png',
          'ability': 'Opportunist',
          'level': 61,
          'moves': ['Lumina Crash', 'Dazzling Gleam', 'Quick Attack', 'Reflect'],
          'item': 'None'
        },
        {
          'name': 'Veluza',
          'type': 'Water/Psychic',
          'image': 'assets/images/veluza.png',
          'ability': 'Mold Breaker',
          'level': 61,
          'moves': ['Aqua Jet', 'Liquidation', 'Psycho Cut', 'Ice Fang'],
          'item': 'None'
        },
        {
          'name': 'Avalugg',
          'type': 'Ice',
          'image': 'assets/images/avalugg.png',
          'ability': 'Own Tempo',
          'level': 61,
          'moves': ['Avalanche', 'Crunch', 'Body Press', 'Earthquake'],
          'item': 'None'
        },
        {
          'name': 'Gogoat',
          'type': 'Grass',
          'image': 'assets/images/gogoat.png',
          'ability': 'Sap Sipper',
          'level': 61,
          'moves': ['Horn Leech', 'Zen Headbutt', 'Play Rough', 'Bulk Up'],
          'item': 'None'
        },
        
      ],
    },
    {
      'name': 'Nemona',
      'region': 'Paldea',
      'battleLocation': 'Blueberry Academy',
      'image': 'assets/images/nemona.jpg',
      'team': [
        {
          'name': 'Pawmot',
          'type': 'Electric/Fighting',
          'image': 'assets/images/pawmot.png',
          'ability': 'Volt Absorb',
          'level': 86,
          'moves': ['Double Shock', 'Close Combat', 'Ice Punch', 'Mach Punch'],
          'item': 'None'
        },
        {
          'name': 'Meowscarada',
          'type': 'Grass/Dark',
          'image': 'assets/images/meowscarada.png',
          'ability': 'Overgrow',
          'level': 87,
          'moves': ['Flower Trick', 'Thunder Punch', 'Throat Chop', 'Play Rough'],
          'item': 'None'
        },
        {
          'name': 'Infernape',
          'type': 'Fire/Fighting',
          'image': 'assets/images/infernape.png',
          'ability': 'Blaze',
          'level': 86,
          'moves': ['Mach Punch', 'Flare Blitz', 'Close Combat', 'Stone Edge'],
          'item': 'None'
        },
        {
          'name': 'Kommo-o',
          'type': 'Dragon/Fighting',
          'image': 'assets/images/kommo-o.png',
          'ability': 'Soundproof',
          'level': 86,
          'moves': ['Clangorous Soul', 'Drain Punch', 'Thunder Punch', 'Earthquake'],
          'item': 'None'
        },
        {
          'name': 'Lycanroc',
          'type': 'Rock',
          'image': 'assets/images/lycanroc.png',
          'ability': 'Sand Rush',
          'level': 86,
          'moves': ['Accelerock', 'Drill Run', 'Play Rough', 'Stealth Rock'],
          'item': 'None'
        },
        {
          'name': 'Milotic',
          'type': 'Water',
          'image': 'assets/images/milotic.png',
          'ability': 'Competitive',
          'level': 86,
          'moves': ['Draining Kiss', 'Surf', 'Ice Beam', 'Mud Shot'],
          'item': 'None'
        },

      ],
    },

  ];



//main champ page
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Champions'),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: champions.length,
        itemBuilder: (context, index) {
          var champion = champions[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChampionDetailPage(champion: champion),
                ),
              );
            },
            child: Card(
              elevation: 4.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Image.asset(
                      champion['image'],
                      fit: BoxFit.contain,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          champion['name'],
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '${champion['battleLocation']}', // Add new info text
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                        Text(
                          'Champion of ${champion['region']}',
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                        SizedBox(height: 8.0),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class ChampionDetailPage extends StatelessWidget {
  final Map<String, dynamic> champion;

  ChampionDetailPage({required this.champion});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Color(0xFF38598C),
      title: Text(
      champion['name'],
      style: TextStyle(color: Colors.white),
  ),
      iconTheme: IconThemeData(color: Colors.white),
),


      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                child: Image.asset(
                  champion['image'],
                  width: 350,
                  height: 350,
                  fit: BoxFit.contain,
                ),
                margin: EdgeInsets.only(bottom: 16),
              ),
              Text(
                'Lineup Pokemon', // Add the "Pokemons" text
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 107, 107, 107)),
              ),
              SizedBox(height: 16.0), // Add space between text and grid
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 3 / 4,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                ),
                itemCount: champion['team'].length,
                itemBuilder: (context, index) {
                  var pokemon = champion['team'][index];
                  return GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text(pokemon['name']),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset(
                                pokemon['image'],
                                width: 250,
                                height: 250,
                                fit: BoxFit.contain,
                              ),
                              Text('${pokemon['type']}'),
                              Text('Level: ${pokemon['level']}'),
                              Text('Ability: ${pokemon['ability']}'),
                              Text('Moves: ${pokemon['moves'].join(', ')}'),
                              Text('Held Item: ${pokemon['item']}'),
                            ],
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text('Close'),
                            ),
                          ],
                        ),
                      );
                    },
                    child: Card(
                      margin: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Image.asset(
                              pokemon['image'],
                              fit: BoxFit.contain,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  pokemon['name'],
                                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                ),
                                Text('Level ${pokemon['level']}'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
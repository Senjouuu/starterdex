import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/pokedex_screen.dart';
import 'screens/moves_screen.dart';
import 'screens/type_effects_screen.dart';
import 'screens/champion_screen.dart';
import 'screens/about_screen.dart';
import 'screens/music_screen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeNotifier>(
      builder: (context, themeNotifier, child) {
        return MaterialApp(
          theme: themeNotifier.getTheme(),
          home: HomeScreen(),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    PokedexScreen(),
    MoveListScreen(),
    TypeEffectsScreen(),
    ChampionScreen(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    final isDarkMode = themeNotifier.isDarkMode();

    return Scaffold(
      appBar: AppBar(
        title: Text('StarterDex', style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xFF38598C),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(16.0),
              color: Color(0xFF38598C),
              child: Column(
                children: [
                  Text(
                    'StarterDex',
                    style: TextStyle(
                      fontSize: 24.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  CircleAvatar(
                    radius: 40.0,
                    backgroundImage: AssetImage('assets/images/pfp.jpg'),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'Welcome, trainer',
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.home, color: isDarkMode ? Colors.white : Color(0xFF38598C)),
                    title: Text(
                      'Main Page',
                      style: TextStyle(color: isDarkMode ? Colors.white : Color(0xFF38598C)),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                      setState(() {
                        _currentIndex = 0;
                      });
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.music_note, color: isDarkMode ? Colors.white : Color(0xFF38598C)),
                    title: Text(
                      'PokeMusic',
                      style: TextStyle(color: isDarkMode ? Colors.white : Color(0xFF38598C)),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MusicScreen()),
                      );
                    },
                  ),
                  SwitchListTile(
                    title: Text('Night Mode', style: TextStyle(color: isDarkMode ? Colors.white : Color(0xFF38598C))),
                    secondary: Icon(Icons.nights_stay, color: isDarkMode ? Colors.white : Color(0xFF38598C)),
                    value: isDarkMode,
                    onChanged: (bool value) {
                      themeNotifier.setTheme(value ? ThemeData.dark() : ThemeData.light());
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.help, color: isDarkMode ? Colors.white : Color(0xFF38598C)),
                    title: Text(
                      'About',
                      style: TextStyle(color: isDarkMode ? Colors.white : Color(0xFF38598C)),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AboutScreen()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        backgroundColor: isDarkMode ? Colors.black : const Color.fromARGB(169, 255, 255, 255),
        selectedItemColor: isDarkMode ? Colors.white : Color.fromARGB(255, 7, 33, 71),
        unselectedItemColor: isDarkMode ? Colors.white70 : Color(0xFF38598C),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Pokedex',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.flash_on),
            label: 'Moves',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.opacity),
            label: 'Type Effects',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Champions',
          ),
        ],
      ),
    );
  }
}

class ThemeNotifier with ChangeNotifier {
  ThemeData _themeData;

  ThemeNotifier(this._themeData);

  ThemeData getTheme() => _themeData;

  bool isDarkMode() => _themeData.brightness == Brightness.dark;

  void setTheme(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }
}

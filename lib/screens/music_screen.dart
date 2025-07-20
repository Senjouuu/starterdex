import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class MusicScreen extends StatefulWidget {
  @override
  _MusicScreenState createState() => _MusicScreenState();
}

class _MusicScreenState extends State<MusicScreen> {
  final AudioPlayer _player = AudioPlayer();
  String? _currentTrack;
  bool _isPlaying = false;

  final List<Map<String, String>> tracks = [
    {'title': 'Pallet Town', 'path': 'assets/audio/Pallet town.mp3'},
    {'title': 'Littleroot Town', 'path': 'assets/audio/Littleroot town.mp3'},
    {'title': 'Driftveil City', 'path': 'assets/audio/Driftveil City.mp3'},
    {'title': 'Champion Cynthia', 'path': 'assets/audio/Cynthia.mp3'},
    {'title': 'Champion Battle (Cynthia)', 'path': 'assets/audio/Champion Battle (Cynthia).mp3'},
  ];

  void _playMusic(String title, String path) async {
    if (_currentTrack == title && _isPlaying) {
      await _player.pause();
      setState(() => _isPlaying = false);
    } else {
      await _player.stop();
      await _player.play(AssetSource(path.replaceFirst('assets/', '')));
      setState(() {
        _currentTrack = title;
        _isPlaying = true;
      });
    }
  }

  @override
  void dispose() {
    _player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PokéMusic', style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xFF38598C),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              'assets/images/bgg.jpg',
              fit: BoxFit.cover,
            ),
          ),

          // Content above background
          Column(
            children: [
              if (_isPlaying)
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/bulbavibe.gif',
                      height: 120,
                      width: 120,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              Expanded(
                child: ListView.builder(
                  itemCount: tracks.length,
                  itemBuilder: (context, index) {
                    final track = tracks[index];
                    final isActive = _currentTrack == track['title'] && _isPlaying;

                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: isActive
                            ? Colors.black.withOpacity(0.5)
                            : Colors.black.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: isActive
                            ? [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.3),
                                  blurRadius: 6,
                                  offset: Offset(0, 3),
                                ),
                              ]
                            : [],
                      ),
                      child: ListTile(
                        leading: SizedBox(
                          width: 24,
                          height: 24,
                          child: Image.asset(
                            isActive
                                ? 'assets/images/ballopen.jpg'
                                : 'assets/images/ball.jpg',
                            fit: BoxFit.contain,
                          ),
                        ),
                        title: Text(
                          track['title']!,
                          style: TextStyle(
                            fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
                            color: Colors.white,
                            shadows: [
                              Shadow(
                                blurRadius: 4.0,
                                color: Colors.black54,
                                offset: Offset(1, 1),
                              ),
                            ],
                          ),
                        ),
                        trailing: Icon(
                          isActive ? Icons.pause : Icons.play_arrow,
                          color: Colors.white,
                        ),
                        onTap: () => _playMusic(track['title']!, track['path']!),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

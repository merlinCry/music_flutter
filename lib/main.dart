import 'package:flutter/material.dart';
import 'package:music_flutter/utils.dart';

void main() {
  runApp(const MusicApp());
}

class MusicApp extends StatelessWidget {
  const MusicApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'music',
      theme: ThemeData(
        primarySwatch: mainColor,
      ),
      home: const MusicHomePage(title: 'music'),
    );
  }
}

class MusicHomePage extends StatefulWidget {
  const MusicHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MusicHomePage> createState() => _MusicHomePageState();
}

class _MusicHomePageState extends State<MusicHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: Container(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.orange,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.card_giftcard),label: 'Card'),
          BottomNavigationBarItem(icon: Icon(Icons.card_giftcard),label: 'Card2'),
          BottomNavigationBarItem(icon: Icon(Icons.card_giftcard),label: 'Card3'),
          BottomNavigationBarItem(icon: Icon(Icons.card_giftcard),label: 'Card4'),
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_example/insta/insta_body.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const InstagramCloneApp());
}

class InstagramCloneApp extends StatelessWidget {
  const InstagramCloneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorScheme: const ColorScheme.light(
            primary: Colors.white,
            secondary: Colors.black,
          ),
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
              showSelectedLabels: false, showUnselectedLabels: false,
              selectedItemColor: Colors.black
          ),
          useMaterial3: true),
      home: const InstagramCloneHome(),
    );
  }
}

class InstagramCloneHome extends StatefulWidget {
  const InstagramCloneHome({super.key});

  @override
  State<InstagramCloneHome> createState() => _InstagramCloneHomeState();
}

class _InstagramCloneHomeState extends State<InstagramCloneHome> {
  late int index;

  @override
  void initState() {
    super.initState();
    index = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: index == 0 ? AppBar(
        title: Text('Instagram', style: GoogleFonts.lobsterTwo(color: Colors.black, fontSize: 32),),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_outline, color: Colors.black, size: 32,),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.paperplane, color: Colors.black, size: 32,),
          ),
        ],
      ) : null,
      body: InstagramBody(index: index),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (newIndex) => setState(() => index = newIndex),
          currentIndex: index,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home, size: 28,), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search, size: 28,), label: 'Search'),
          ]
      ),
    );
  }
}

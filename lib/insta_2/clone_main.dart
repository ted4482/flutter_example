import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_example/insta_2/clone_body.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const CloneApp());
}

class CloneApp extends StatelessWidget {
  const CloneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CloneHome(),
    );
  }
}

class CloneHome extends StatefulWidget {
  const CloneHome({super.key});

  @override
  State<CloneHome> createState() => _CloneHomeState();
}

class _CloneHomeState extends State<CloneHome> {
  late int index;

  @override
  void initState() {
    super.initState();
    index = 0;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: index == 0 ? AppBar(
          title: Text('Instagram', style: GoogleFonts.lobsterTwo(color: Colors.black, fontSize: 32),),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_outline)),
            IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.chat_bubble)),
            IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.paperplane)),
          ],
        ) : null,
        body: CloneBody(index: index),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          onTap: (newIndex) => setState(() => index = newIndex),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home, size: 40), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search, size: 40), label: 'Search'),
          ],
        ),
      ),
    );
  }
}



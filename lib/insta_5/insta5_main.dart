import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_example/insta_5/insta5_body.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    const Insta5App()
  );
}

class Insta5App extends StatelessWidget {
  const Insta5App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          primary: Colors.white,
          secondary: Colors.black,
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey.shade600
        )
      ),
      home: const Insta5Home(),
    );
  }
}

class Insta5Home extends StatefulWidget {
  const Insta5Home({super.key});

  @override
  State<Insta5Home> createState() => _Insta5HomeState();
}

class _Insta5HomeState extends State<Insta5Home> {
  late int pageIndex;

  @override
  void initState() {
    super.initState();
    pageIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: pageIndex == 0 ? AppBar(
          title: Text('Instagram', style: GoogleFonts.lobsterTwo(fontSize: 32, color: Colors.black)),
          actions: [
            IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_outline)),
            IconButton(onPressed: (){}, icon: const Icon(CupertinoIcons.chat_bubble_text)),
          ],
        ) : null,
        body: Insta5Body(pageIndex: pageIndex,),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (newIndex) => setState(() => pageIndex = newIndex),
            currentIndex: pageIndex,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            ]),
      ),
    );
  }
}

/*
- material, cupertino design 정의
light, dark
 */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_example/insta_3/insta3_body.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    const InstaApp(),
  );
}

class InstaApp extends StatelessWidget {
  const InstaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: InstaHome(),
    );
  }
}

class InstaHome extends StatefulWidget {
  const InstaHome({super.key});

  @override
  State<InstaHome> createState() => _InstaHomeState();
}

class _InstaHomeState extends State<InstaHome> {
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
          title: Text('Instagram', style: GoogleFonts.lobsterTwo(color: Colors.black, fontSize: 32),),
          actions: [
            IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_outline)),
            IconButton(onPressed: (){}, icon: const Icon(CupertinoIcons.chat_bubble_text)),
          ],
        ) : null,
        body: Insta3Body(pageIndex: pageIndex,),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: pageIndex,
          onTap: (index) => setState(() => pageIndex = index),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home,size: 40),label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search,size: 40),label: 'Search')
          ]),
      ),
    );
  }
}



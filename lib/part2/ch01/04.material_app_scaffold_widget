import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("This is App bar"),
        centerTitle: false,
        actions: [
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              print('Tab! Home');
            },
          ),
          IconButton(
            icon: Icon(Icons.play_arrow),
            onPressed: () {
              print('Tab! Play');
            },
          ),
        ],
      ),
      body: MyApp(),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.bug_report),
          onPressed: () {
            print("Tab! FAB");
          }),
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Text(
          style: TextStyle(color: Colors.black, fontSize: 60),
          "Hello, Flutter",
        ),
      ),
    );
  }
}

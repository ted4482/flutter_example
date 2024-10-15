import 'package:flutter/material.dart';
import 'package:flutter_example/game/game_body.dart';

void main() {
  runApp(const MaterialApp(home: RSPApp()));
}

class RSPApp extends StatelessWidget {
  const RSPApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Game: 가위!바위!보!'),
      ),
      body: const GameBody(),
    );
  }
}

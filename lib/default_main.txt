import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: HomeWidget(),
    ),
  );
}

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Placeholder(),
    );
  }
}

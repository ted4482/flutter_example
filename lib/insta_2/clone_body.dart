import 'package:flutter/material.dart';
import 'package:flutter_example/insta_2/clone_home_screen.dart';
import 'package:flutter_example/insta_2/clone_search_screen.dart';

class CloneBody extends StatelessWidget {
  final int index;

  const CloneBody({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    if (index == 1) {
      return const SearchScreen2();
    }
    return const HomeScreen2();
  }
}

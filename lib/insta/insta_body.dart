import 'package:flutter/material.dart';
import 'package:flutter_example/insta/home_screen.dart';
import 'package:flutter_example/insta/search_screen.dart';

class InstagramBody extends StatelessWidget {
  final int index;

  const InstagramBody({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    if (index == 0) {
      return const HomeScreen();
    }

    return const SearchScreen();
  }
}

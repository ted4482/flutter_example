import 'package:flutter/material.dart';
import 'package:flutter_example/insta_5/insta5_home.dart';
import 'package:flutter_example/insta_5/insta5_search.dart';

class Insta5Body extends StatelessWidget {
  final int pageIndex;

  const Insta5Body({super.key, required this.pageIndex});

  @override
  Widget build(BuildContext context) {
    if (pageIndex == 1) {
      return const Insta5Search();
    }
    return const Insta5Home();
  }
}

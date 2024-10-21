import 'package:flutter/material.dart';
import 'package:flutter_example/insta_3/insta3_home.dart';
import 'package:flutter_example/insta_3/insta3_search.dart';

class Insta3Body extends StatelessWidget {
  final int pageIndex;

  const Insta3Body({super.key, required this.pageIndex});

  @override
  Widget build(BuildContext context) {
    if (pageIndex == 1) {
      return const SearchArea3();
    }
    return const HomeArea3();
  }
}

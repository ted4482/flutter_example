import 'package:flutter/material.dart';
import 'package:flutter_example/insta_4/insta4_home.dart';
import 'package:flutter_example/insta_4/insta4_search.dart';

class Insta4Body extends StatelessWidget {
  final int pageIndex;
  const Insta4Body({super.key, required this.pageIndex});

  @override
  Widget build(BuildContext context) {
    if (pageIndex == 1) {
      return const Insta4Search();
    }
    return  const Insta4Home();
  }
}

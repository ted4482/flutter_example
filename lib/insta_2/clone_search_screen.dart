import 'package:flutter/material.dart';

class SearchScreen2 extends StatelessWidget {
  const SearchScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            CloneSearchBar(),
            CloneGridView(),
          ]
        ),
      ),
    );
  }
}

class CloneSearchBar extends StatelessWidget {
  const CloneSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: TextField(
          cursorColor: Colors.black,
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.search),
            hintText: '검색',
            hintStyle: TextStyle(color: Colors.grey.shade600),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.grey.shade200, width: 1)
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: Colors.grey.shade200, width: 1)
            ),
            contentPadding: const EdgeInsets.all(0),
            filled: true,
            fillColor: Colors.grey.shade200,
          ),
        ),
      ),
    );
  }
}

final gridItems = List.generate(30, (index) => Colors.green.shade300);

class CloneGridView extends StatelessWidget {
  const CloneGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      mainAxisSpacing: 3,
      crossAxisCount: 3,
      crossAxisSpacing: 3,
      children: gridItems.map((color) => Container(color: color,)).toList()
    );
  }
}

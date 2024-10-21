import 'package:flutter/material.dart';

class SearchArea3 extends StatelessWidget {
  const SearchArea3({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          SearchDataBar3(),
          SearchGrid3(),
        ],
      ),
    );
  }
}

class SearchDataBar3 extends StatelessWidget {
  const SearchDataBar3({super.key});

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
                  borderSide: BorderSide(color: Colors.grey.shade300, width: 1)
              ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.grey.shade300, width: 1)
              ),
              fillColor: Colors.grey.shade300,
              filled: true,
              contentPadding: EdgeInsets.zero
          ),
        ),
      ),
    );
  }
}

final gridItems = List.generate(30, (index) => Colors.orange.shade300);

class SearchGrid3 extends StatelessWidget {
  const SearchGrid3({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      mainAxisSpacing: 3,
      crossAxisCount: 3,
      crossAxisSpacing: 3,
      padding: EdgeInsets.zero,
      children: gridItems.map((color) => Container(color: color)).toList(),
    );
  }
}

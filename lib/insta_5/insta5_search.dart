import 'package:flutter/material.dart';

class Insta5Search extends StatelessWidget {
  const Insta5Search({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Column(
          children: [
            TextField(
              cursorColor: Colors.black,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search, color: Colors.grey.shade600),
                hintText: '검색',
                hintStyle: TextStyle(color: Colors.grey.shade600),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(width: 1, color: Colors.grey.shade200),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(width: 1, color: Colors.grey.shade200),
                ),
                filled: true,
                fillColor: Colors.grey.shade200,
              ),
            ),
            const SizedBox(height: 8,),
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 3,
              crossAxisSpacing: 3,
              mainAxisSpacing: 3,
              children: gridItems.map((color) => Container(color: color,)).toList(),
            ),
          ],
        ),
      ),
    );
  }
}

final gridItems = List.generate(30, (index) => Colors.orange,).toList();

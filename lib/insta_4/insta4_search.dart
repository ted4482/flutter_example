import 'package:flutter/material.dart';

class Insta4Search extends StatelessWidget {
  const Insta4Search({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Insta4SearchInput(),
          GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            mainAxisSpacing: 3,
            crossAxisCount: 3,
            crossAxisSpacing: 3,
            children: List.generate(30, (index) => const Insta4GridItem()),
          ),
        ],
      ),
    );
  }
}

class Insta4SearchInput extends StatelessWidget {
  const Insta4SearchInput({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: TextField(
          cursorColor: Colors.black,
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.search, color: Colors.grey.shade600,),
            hintText: '검색',
            hintStyle: TextStyle(color: Colors.grey.shade600),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(width: 1, color: Colors.grey.shade200)
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(width: 1, color: Colors.grey.shade200)
            ),
            filled: true,
            fillColor: Colors.grey.shade200,
            contentPadding: EdgeInsets.zero,
        ),),
      ),
    );
  }
}

class Insta4GridItem extends StatelessWidget {
  const Insta4GridItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.orange.shade200,);
  }
}


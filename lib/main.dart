import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Widget을 상하로 배치하기"),
      ),
      body: MyBody(),
    ),
  ));
}

class MyBody extends StatelessWidget {
  const MyBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          GreyContainer(),
          GreyContainer(),
          GreyContainer(),
          GreyContainer(),
          GreyContainer(),
          GreyContainer(),
          GreyContainer(),
          GreyContainer(),
          GreyContainer(),
          GreyContainer(),
        ],
      ),
    );
  }
}

class GreyContainer extends StatelessWidget {
  const GreyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      width: 100,
      height: 100,
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
    );
  }
}

class MyBody1 extends StatelessWidget {
  const MyBody1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.infinity,
      // height: 300,
      color: Colors.grey,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Row(
          // Column,Row
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 80,
              color: Colors.red,
              child: Text("Container 1"),
            ),
            Container(
              width: 100,
              height: 80,
              color: Colors.green,
              child: Text("Container 2"),
            ),
            Container(
              width: 100,
              height: 80,
              color: Colors.blue,
              child: Text("Container 3"),
            )
          ],
        ),
        Container(
          width: 300,
          height: 120,
          color: Colors.purple,
          child: Text("Container 4"),
        )
      ]),
    );
  }
}

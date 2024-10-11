import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Widget을 겹겹히 쌓아 배치하기"),
      ),
      body: MyBody(),
    ),
  ));
}

class MyBody extends StatelessWidget {
  const MyBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          Align(
            alignment: Alignment.center            ,
            child: Container(width: 300, height: 300,
                decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(150),
                ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(width: 200, height: 200,
              decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(150),
              ),
            ),
          ),
          Align(
              alignment: Alignment.center,
              child: Text("Profile", style: TextStyle(color:Colors.red,fontSize: 32),))


          // Container(width: 500, height: 500, color: Colors.red,),
          // Container(width: 450, height: 450, color: Colors.orange,),
          // Container(width: 400, height: 400, color: Colors.yellow,),
          // Container(width: 350, height: 350, color: Colors.green,),
          // Container(width: 300, height: 300, color: Colors.blue,),
          // Container(width: 250, height: 250, color: Colors.indigo,),
          // Container(width: 200, height: 200, color: Colors.purple,),
        ],
    );
  }
}

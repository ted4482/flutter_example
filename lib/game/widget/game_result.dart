import 'package:flutter/material.dart';
import 'package:flutter_example/game/enum.dart';

class GameResult extends StatelessWidget {
  final bool isDone;
  final Result? result;
  final VoidCallback callback;

  const GameResult({required this.isDone, required this.callback, this.result, super.key});

  @override
  Widget build(BuildContext context) {
    if (isDone) {
      return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
        Text(result!.displayString, style: const TextStyle(fontSize: 20),),
        const SizedBox(height: 8,),
        TextButton(onPressed: () => callback.call() , child: const Text('Reset', style: TextStyle(fontSize: 24),))
      ]);
    }
    return const Center(
      child: Text(
        '가위, 바위, 보 중 하나를 선택해 주세요.',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}

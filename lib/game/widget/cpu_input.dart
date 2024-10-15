import 'package:flutter/material.dart';
import 'package:flutter_example/game/enum.dart';
import 'package:flutter_example/game/widget/input_card.dart';

class CpuInput extends StatelessWidget {
  final bool isDone;
  final InputType cpuInput;

  const CpuInput({required this.isDone, required this.cpuInput, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      const Expanded(child: SizedBox.shrink()),
      Expanded(child: InputCard(child: showCpuInput(),)),
      const Expanded(child: SizedBox.shrink())
    ]);
  }

  Widget showCpuInput() {
    if (isDone) {
      return Image.asset(cpuInput.path);
    }
    return const SizedBox(
        width: 64, height: 90,
        child: Center(child: Text('?', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),)));
  }
}

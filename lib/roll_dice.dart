import 'package:flutter/material.dart';
import 'dart:math';

class RollDice extends StatefulWidget {
  const RollDice({super.key});

  @override
  State<RollDice> createState() {
    return _RollDiceState();
  }
}

class _RollDiceState extends State<RollDice> {
  final Random random = Random();
  int num = 1;
  String path = 'assets/images/dice-1.png';
  void rollDice() {
    setState(() {
      num = random.nextInt(6) + 1;
      path = 'assets/images/dice-$num.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(path, width: 200),
        const SizedBox(
          height: 20,
        ),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                fontSize: 28,
              ),
            ),
            child: const Text("Roll Dice")),
      ],
    );
  }
}

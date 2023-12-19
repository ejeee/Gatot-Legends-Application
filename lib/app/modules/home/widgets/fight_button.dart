import 'package:flutter/material.dart';

class FightButton extends StatelessWidget {
  final Function function;

  const FightButton({super.key, required this.function});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Align(
        alignment: Alignment.centerRight,
        child: GestureDetector(
          onTap: () => function(),
          child: Image.asset(
            'lib/app/assets/FIGHT.png',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

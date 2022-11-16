import 'package:flutter/material.dart';

class PlayGroundLayoutItem extends StatelessWidget {
  final String textContent;

  const PlayGroundLayoutItem({super.key, required this.textContent});

  @override
  Widget build(BuildContext context) {
    return Container(
      // 内边距
      padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 32.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 3.0,
        ),
        color: Colors.yellow[200],
      ),
      child: Text(
        textContent,
        style: const TextStyle(fontSize: 22.0),
      ),
    );
  }
}

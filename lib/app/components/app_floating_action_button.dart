import 'package:flutter/material.dart';

class AppFloatingActionButton extends StatelessWidget {
  const AppFloatingActionButton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => print('floating action button'),
      // 背景色
      backgroundColor: Colors.black87,
      // 前景色
      foregroundColor: Colors.white70,
      child: const Icon(Icons.share_outlined),
    );
  }
}

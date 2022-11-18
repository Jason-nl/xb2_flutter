import 'package:flutter/material.dart';

class PlayGroundRouting extends StatelessWidget {
  const PlayGroundRouting({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: TextButton(
          child: const Text('查看内容'),
          onPressed: () {
            Navigator.pushNamed(context, '/post/3', arguments: {'user': '王皓'});
          },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class PostShow extends StatelessWidget {
  final String postId;

  const PostShow(this.postId);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Center(
        child: Text(
          '内容： $postId',
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
    );
  }
}

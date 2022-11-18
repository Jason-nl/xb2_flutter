import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '宁皓网创立于2011年，',
              style: Theme.of(context).textTheme.headline6,
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('返回'),
            )
          ],
        ),
      ),
    );
  }
}

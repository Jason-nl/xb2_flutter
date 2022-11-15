import 'package:flutter/material.dart';

class AppPageHeader extends StatelessWidget implements PreferredSizeWidget {
  const AppPageHeader({Key? key}) : super(key: key);

  @override
  final Size preferredSize = const Size.fromHeight(100);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Image.asset(
        'assets/images/logo.png',
        width: 32,
        color: Colors.white,
      ),
      leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
      actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz))
      ],
      bottom: const TabBar(tabs: [
        Tab(text: '最近'),
        Tab(text: '热门'),
      ]),
    );
  }
}

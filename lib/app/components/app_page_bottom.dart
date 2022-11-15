// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class AppPageBottom extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int>? onTap;
   const AppPageBottom({
    Key? key,
    required this.currentIndex,
    this.onTap,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: onTap,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.explore_outlined), label: '发现'),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_a_photo_outlined), label: '添加'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined), label: '用户'),
        ]);
  }
}

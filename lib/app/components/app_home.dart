import 'package:flutter/material.dart';

import 'app_page_bottom.dart';
import 'app_page_header.dart';
import 'app_page_main.dart';
import 'app_page_side.dart';

class AppHome extends StatefulWidget {
  const AppHome({Key? key}) : super(key: key);

  @override
  State<AppHome> createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {
  // 底部导航栏当前项目
  int currentAppBottomNavigationBarItem = 0;

  // 点按底部导航栏事件处理
  bool showAppBar = true;

  void onTapAppBottomNavigationBarItem(int index) {
    setState(() {
      currentAppBottomNavigationBarItem = index;
      showAppBar = index == 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: const AppPageSide(),
        // 顶部应用栏
        appBar: showAppBar ? const AppPageHeader() : null,
        // backgroundColor: Colors.amber,
        body: AppPageMain(currentIndex: currentAppBottomNavigationBarItem),
        bottomNavigationBar: AppPageBottom(
          currentIndex: currentAppBottomNavigationBarItem,
          onTap: onTapAppBottomNavigationBarItem,
        ),
        // floatingActionButton: const AppFloatingActionButton(),
      ),
    );
  }
}

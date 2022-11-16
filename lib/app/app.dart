import 'package:flutter/material.dart';
import 'package:xb2_flutter/app/components/app_floating_action_button.dart';
import 'package:xb2_flutter/app/components/app_page_bottom.dart';
import 'package:xb2_flutter/app/components/app_page_header.dart';
import 'package:xb2_flutter/app/components/app_page_main.dart';
import 'package:xb2_flutter/app/components/app_page_side.dart';
import 'package:xb2_flutter/app/themes/app_theme.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: AppTheme.dark,
      theme: AppTheme.light,
      // 页面结构
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          drawer: const AppPageSide(),
          // 顶部应用栏
          appBar: showAppBar ? const AppPageHeader() : null,
          backgroundColor: Colors.amber,
          body: AppPageMain(currentIndex: currentAppBottomNavigationBarItem),
          bottomNavigationBar: AppPageBottom(
            currentIndex: currentAppBottomNavigationBarItem,
            onTap: onTapAppBottomNavigationBarItem,
          ),
          // floatingActionButton: const AppFloatingActionButton(),
        ),
      ),
    );
  }
}

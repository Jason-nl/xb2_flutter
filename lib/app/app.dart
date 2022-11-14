import 'package:flutter/material.dart';
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

  // 一组页面主体小部件
  final pageMain = [
    // 发现
    const TabBarView(children: [
      Icon(Icons.explore_outlined, size: 128, color: Colors.black12),
      Icon(Icons.local_fire_department_outlined,
          size: 128, color: Colors.black12)
    ]),
    // 添加
    const Center(
      child: Icon(
        Icons.add_a_photo_outlined,
        size: 128,
        color: Colors.black12,
      ),
    ),
    // 用户
    const Center(
      child: Icon(
        Icons.account_circle_outlined,
        size: 128,
        color: Colors.black12,
      ),
    ),
  ];

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
          // 顶部应用栏
          appBar: showAppBar
              ? AppBar(
                  title: Image.asset(
                    'assets/images/logo.png',
                    width: 32,
                    color: Colors.white,
                  ),
                  leading: IconButton(
                      onPressed: () {}, icon: const Icon(Icons.menu)),
                  actions: [
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.more_horiz))
                  ],
                  bottom: const TabBar(tabs: [
                    Tab(text: '最近'),
                    Tab(text: '热门'),
                  ]),
                )
              : null,
          backgroundColor: Colors.amber,
          body: pageMain.elementAt(currentAppBottomNavigationBarItem),
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: currentAppBottomNavigationBarItem,
              onTap: onTapAppBottomNavigationBarItem,
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.explore_outlined), label: '发现'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.add_a_photo_outlined), label: '添加'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.account_circle_outlined), label: '用户'),
              ]),
          floatingActionButton: FloatingActionButton(
            onPressed: () => print('floating action button'),
            // 背景色
            backgroundColor: Colors.black87,
            // 前景色
            foregroundColor: Colors.white70,
            child:  const Icon(Icons.share_outlined),
          ),
        ),
      ),
    );
  }
}

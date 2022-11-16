import 'package:flutter/material.dart';
import 'package:xb2_flutter/app/components/app_logo.dart';
import 'package:xb2_flutter/app/components/app_page_header_actions_more.dart';

class AppPageHeader extends StatelessWidget implements PreferredSizeWidget {
  const AppPageHeader({Key? key}) : super(key: key);

  @override
  final Size preferredSize = const Size.fromHeight(100);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const AppLogo(),
      leading: IconButton(
          onPressed: () {
            // 弹出侧边栏
            Scaffold.of(context).openDrawer();
          },
          icon: const Icon(Icons.menu)),
      actions: const [AppPageHeaderActionsMore()],
      bottom: const TabBar(tabs: [
        Tab(text: '最近'),
        Tab(text: '热门'),
      ]),
    );
  }
}

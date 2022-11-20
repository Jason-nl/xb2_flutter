import 'package:flutter/material.dart';

import '../app/app_model.dart';
import '../app/components/app_home.dart';
import '../playground/routing/components/about.dart';
import 'app_route_configuration.dart';

class AppRouterDelegate extends RouterDelegate<AppRouteConfiguration>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin {
  final AppModel appModel;
  final _navigatorKey;
  AppRouterDelegate(this.appModel)
      : _navigatorKey = GlobalKey<NavigatorState>() {
    // 监听 appModel
    appModel.addListener(notifyListeners);
  }

  @override
  void dispose() {
    super.dispose();
    // 取消 appModel的监听
    appModel.removeListener(notifyListeners);
  }

// 获取 Navigator使用的 key
  @override
  get navigatorKey => _navigatorKey;

  // 设置新路由地址
  @override
  setNewRoutePath(configuration) async {
    print('设置新路由地址 setNewRoutePath');
    print(configuration.pageName);
    if (configuration.isHomePage) appModel.setPageName('');
    if (configuration.isAboutPage) appModel.setPageName('About');
  }

// 当前路由配置
  @override
  get currentConfiguration {
    if (appModel.pageName == '') return AppRouteConfiguration.home();
    if (appModel.pageName == 'About') return AppRouteConfiguration.about();
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      // key: _navigatorKey,
      pages: [
        const MaterialPage(
          key: ValueKey('AppHome'),
          child: AppHome(),
        ),
        if (appModel.pageName == 'About')
          const MaterialPage(
            child: About(),
            key: ValueKey('About'),
          )
      ],
      onPopPage: (route, result) {
        if (!route.didPop(result)) {
          return false;
        }

        return true;
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xb2_flutter/app/app_model.dart';
import 'package:xb2_flutter/app/themes/app_theme.dart';
import 'package:xb2_flutter/auth/auth_model.dart';
import 'package:xb2_flutter/router/app_route_information_parser.dart';
import 'package:xb2_flutter/router/app_router_delegate.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final AppModel appModel = AppModel();
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AuthModel>(create: (context) => AuthModel()),
        ChangeNotifierProvider<AppModel>(create: (context) => AppModel())
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        darkTheme: AppTheme.dark,
        theme: AppTheme.light,
        // 初始路由
        // initialRoute: '/',
        routerDelegate: AppRouterDelegate(appModel),
        routeInformationParser: AppRouteInformationParser(),

        // 命名路由
        // routes: {
        //   '/':(context) => const AppHome(),
        //   '/about':(context) => const About(),
        // },

        // onGenerateRoute: (settings) {
        //   print(settings.arguments);
        //   if (settings.name == '/') {
        //     return MaterialPageRoute(builder: (context) => const AppHome());
        //   }

        //   if (settings.name == '/about') {
        //     return MaterialPageRoute(builder: (context) => const About());
        //   }

        //   final uri = Uri.parse(settings.name ?? '');

        //   if (uri.pathSegments.length == 2 &&
        //       uri.pathSegments.first == 'post') {
        //     print(uri.pathSegments);
        //     final postId = uri.pathSegments[1];
        //     return MaterialPageRoute(builder: (context) => PostShow(postId));
        //   }
        // },
      ),
    );
  }
}

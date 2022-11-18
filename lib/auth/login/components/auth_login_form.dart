import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xb2_flutter/auth/auth_model.dart';

class AuthLoginForm extends StatelessWidget {
  const AuthLoginForm({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final authModel = Provider.of<AuthModel>(context, listen: true);
    final loginButton = ElevatedButton(
      onPressed: () {
        print('已登陆“ ${authModel.isLoggedIn}');
        authModel.login();
        print('已登陆“ ${authModel.isLoggedIn}');
      },
      child: const Text('登陆'),
    );

    final logoutButton = ElevatedButton(
      onPressed: () {
        print('退出登陆 ${authModel.isLoggedIn}');
        authModel.logout();
        print('退出登陆 ${authModel.isLoggedIn}');
      },
      child: const Text('退出登陆'),
    );
    return Container(
      child: authModel.isLoggedIn ? logoutButton : loginButton,
    );
  }
}

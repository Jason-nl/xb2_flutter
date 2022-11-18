import 'package:flutter/material.dart';
import 'package:xb2_flutter/auth/login/auth_login.dart';

class PlayGroundState extends StatelessWidget {
  const PlayGroundState({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: double.infinity,
      child: const AuthLogin(),
    );
  }
}
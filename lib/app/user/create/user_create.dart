import 'package:flutter/material.dart';

class UserCreate extends StatefulWidget {
  const UserCreate({Key? key}) : super(key: key);

  @override
  State<UserCreate> createState() => _UserCreateState();
}

class _UserCreateState extends State<UserCreate> {
  String? username;
  String? password;

  final usernameFieldKey = GlobalKey<FormFieldState>();
  final passwordFieldKey = GlobalKey<FormFieldState>();

  final usernameFieldController = TextEditingController();
  final passwordFieldController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    super.dispose();
    usernameFieldController.dispose();
    passwordFieldController.dispose();
  }

  @override
  void initState() {
    super.initState();
    usernameFieldController.addListener(() {
      print('用户名 ${usernameFieldController.text}');
    });
    passwordFieldController.addListener(() {
      print('密码 ${passwordFieldController.text}');
    });

    // usernameFieldController.text = 'wanghao';
    // passwordFieldController.text = '123456';
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '注册用户',
            style: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 32,
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          TextFormField(
            key: usernameFieldKey,
            controller: usernameFieldController,
            decoration:
                const InputDecoration(labelText: '用户名', hintText: '请输入用户名'),
            onChanged: (value) {
              username = value;
            },
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return '请输入用户名';
              }
            },
          ),
          const SizedBox(height: 32),
          TextFormField(
            key: passwordFieldKey,
            controller: passwordFieldController,
            decoration:
                const InputDecoration(labelText: '密码', hintText: '请输入密码'),
            obscureText: true,
            onChanged: (value) {
              password = value;
            },
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return '请输入用户密码';
              }

              if (value.isNotEmpty && value.length < 6) {
                return '请设置 6 位以上的密码';
              }

              return null;
            },
          ),
          const SizedBox(height: 32),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 20),
                  minimumSize: const Size(double.infinity, 60)),
              onPressed: () {
                // usernameFieldKey.currentState!.validate();
                // passwordFieldKey.currentState!.validate();
                formKey.currentState!.validate();
                print(
                    '注册用户: 用户 ${usernameFieldKey.currentState!.value} 密码 ${passwordFieldKey.currentState!.value}');
              },
              child: const Text('注册用户')),
        ],
      ),
    );
  }
}

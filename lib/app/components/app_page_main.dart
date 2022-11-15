import 'package:flutter/material.dart';
import 'package:xb2_flutter/app/post/create/post_create.dart';
import 'package:xb2_flutter/app/post/index/post_index.dart';
import 'package:xb2_flutter/app/user/profile/user_profile.dart';

class AppPageMain extends StatelessWidget {
  final int currentIndex;
  AppPageMain({Key? key, this.currentIndex = 0}) : super(key: key);

  // 一组页面主体小部件
  final pageMain = [
    // 发现
    const PostIndex(),
    // 添加
    const PostCreate(),
    // 用户
    const UserProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return pageMain.elementAt(currentIndex);
  }
}

import 'package:flutter/material.dart';
import 'package:xb2_flutter/playground/playground.dart';

import '../../post/create/post_create.dart';
import '../../post/index/post_index.dart';
import '../../user/profile/user_profile.dart';

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
    // 练习
    const PlayGroud()
  ];

  @override
  Widget build(BuildContext context) {
    return pageMain.elementAt(currentIndex);
  }
}

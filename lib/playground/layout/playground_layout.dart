import 'package:flutter/material.dart';
import 'package:xb2_flutter/app/components/app_logo.dart';
import 'package:xb2_flutter/playground/layout/components/playgroud_layout_item.dart';

class PlayGroudLayout extends StatelessWidget {
  const PlayGroudLayout({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // SizedBox: 尺寸盒子
    return SizedBox.expand(
      child: Container(
        color: Colors.greenAccent,
        // SafeArea: 安全区域
        child: Stack(
          // 设置子组件的对齐方式
          alignment: Alignment.center,
          children: [
            Image.network(
              'https://resources.ninghao.net/images/IMG_2680.JPG',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            // 定位：Positioned
            const Positioned(
              top: 50,
              left: 50,
              child: AppLogo(size: 64),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        // color: Colors.deepPurpleAccent,
        padding: const EdgeInsets.all(60),
        alignment: Alignment.topCenter,
        width: 350,
        height: 350,
        // transform: Matrix4.rotationZ(0.5),
        // transformAlignment: Alignment.topRight,
        decoration: BoxDecoration(
            // 装饰的底色
            color: Colors.deepPurpleAccent,
            // 线性的渐变色
            gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.yellow, Colors.pink, Colors.blue, Colors.cyan]),
            // 装饰盒子的背景图片 
            image: const DecorationImage(
                image: NetworkImage(
                    'https://resources.ninghao.net/images/IMG_2626.JPG'),
                fit: BoxFit.cover,
                // 颜色的滤镜
                colorFilter:
                    ColorFilter.mode(Colors.deepOrange, BlendMode.softLight)),
            // 圆角        
            borderRadius: const BorderRadius.all(Radius.circular(25)),
            // 边框
            border: Border.all(
                color: Colors.deepOrangeAccent,
                width: 5,
                style: BorderStyle.solid),
            // 阴影设置    
            boxShadow: const [
              BoxShadow(
                color: Colors.deepOrangeAccent,
                offset: Offset(20, 20),
                blurRadius: 30,
              )
            ]),

        child: Image.asset(
          "assets/images/logo.png",
          width: 96,
          color: Colors.white,
        ),
      ),
    );
  }
}

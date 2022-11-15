import 'package:flutter/material.dart';
import 'package:xb2_flutter/app/components/app_bottom_sheet.dart';

class AppFloatingActionButton extends StatefulWidget {
  const AppFloatingActionButton({Key? key}) : super(key: key);

  @override
  State<AppFloatingActionButton> createState() =>
      _AppFloatingActionButtonState();
}

class _AppFloatingActionButtonState extends State<AppFloatingActionButton> {
  // 是否正在显示底部面板
  bool isBottomSheetShown = false;

  //飘浮动作按钮小图标
  Icon floatingActionButtonIcon() {
    return isBottomSheetShown
        ? const Icon(Icons.close)
        : const Icon(Icons.share_outlined);
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        // 关闭当前显示的底部面板
        if (isBottomSheetShown) {
          return Navigator.pop(context);
        }

        // 显示底部面板
        final bottomSheetController = showBottomSheet(
            context: context, builder: (context) => const AppBottomSheet());

        setState(() {
          isBottomSheetShown = true;
        });

        // 关闭面板以后
        bottomSheetController.closed.then((value) {
          setState(() {
            isBottomSheetShown = false;
          });
        });
      },
      // 背景色
      backgroundColor: Colors.black87,
      // 前景色
      foregroundColor: Colors.white70,
      child: floatingActionButtonIcon(),
    );
  }
}
